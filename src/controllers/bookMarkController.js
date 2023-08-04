// Assuming you have a 'User' model to fetch user data
const mongoose = require("mongoose");
const Account = require("../models/Account");
const jwt = require("jsonwebtoken");
const path = require("path");
const Book = require("../models/Book");
const Volume = require("../models/Volume");
const BookMark = require("../models/BookMark");
const bcrypt = require("bcrypt");
const fs = require("fs");
const matchedBooks = [];
const { findLatestVolume } = require("../public/js/LatestVolume");
const { bookContainer } = require("../middleware/database");
const azureBlobBaseUrl = "https://happinovel.blob.core.windows.net"; // Define the Azure Blob Storage base URL here
const Chapter = require("../models/Chapter");

exports.bookmark = async (req, res) => {
  // <-- Add 'async' here
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error("No JWT token found");
    }

    const decodedToken = jwt.verify(token, "information of user");
    const user = await Account.findById(decodedToken.id);
    const BookMId = await BookMark.find({ userID: user.userID });
    const uniqueBookIds = new Set();
    // Loop through the bookmarks and find the unique book IDs
    for (const bookmark of BookMId) {
      uniqueBookIds.add(bookmark.bookID);
    }

    const matchedBooks = [];

    // Loop through the unique book IDs and find the matching books
    for (const bookID of uniqueBookIds) {
      try {
        const book = await Book.findOne({ bookID }); // Assuming you have a 'Book' model

        if (book) {
          // Book with the given bookID found, add it to the array
          matchedBooks.push(book);
        }
      } catch (err) {
        console.error("Error finding book:", err);
      }
    }

    if (!user) {
      throw new Error("User not found");
    }

    // Helper function to get the full cover image path
    const bookIDs = matchedBooks.map((book) => book.bookID);
    const latestVolumeUrls = await Promise.all(
      matchedBooks.map(async (book) => {
        return await findLatestVolume(book.bookID, bookContainer);
      })
    );
    const volumes = await Volume.find({ bookID: { $in: bookIDs } });
    const chapters = await Chapter.find({
      $or: matchedBooks.map((book) => ({
        bookID: book.bookID,
        // Add more conditions if needed
      })),
    });

    const latestChapterID = await findLatestChapter(latestVolumeUrls);
    res.render("bookmark", {
      matchedBooks,
      bookContainer,
      latestVolumeUrls,
      volumes,
      latestChapterID,
      chapters,
    });
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }
};

async function findLatestChapter(latestVolumeUrl) {
  console.log(latestVolumeUrl);
  try {
    const urlObject = new URL(latestVolumeUrl);
    const urlPathname = urlObject.pathname;

    // Extract the volume folder name and bookID from the URL
    const volumeFolderRegex = /\/Book(\d+)\/Volume(\d+)\//;
    const match = urlPathname.match(volumeFolderRegex);
    if (!match) {
      console.error("Invalid latestVolumeUrl:", latestVolumeUrl);
      return null;
    }
    const bookID = match[1];
    const volumeNumber = match[2];
    const volumePath = `Book${bookID}/Volume${volumeNumber}`;

    // Get the list of blobs (chapter files) in the volume's directory
    const blobs = bookContainer.listBlobsFlat({ prefix: volumePath });

    // Filter blobs based on the chapter file names
    const chapterFiles = [];
    for await (const blob of blobs) {
      chapterFiles.push(blob.name);
    }

    // Sort the chapter file names in ascending order
    chapterFiles.sort();

    // Get the latest chapter filename (last one in the sorted array)
    const latestChapterFileName = chapterFiles[chapterFiles.length - 1];

    // Extract the chapID from the filename
    const chapIDRegex = /chap(\d+)(?:_(\d+)_(\d+))?\.docx$/i;
    const chapIDMatch = latestChapterFileName.match(chapIDRegex);

    if (chapIDMatch) {
      const chapID = chapIDMatch[1];
      console.log("Latest chapID:", chapID);
      return chapID;
    } else {
      console.error(
        "ChapID not found in the latestChapterFileName:",
        latestChapterFileName
      );
      return null;
    }

    // Build and return the URL for the latest chapter file
  } catch (err) {
    console.error("Error finding latest chapter:", err);
    return null;
  }
}
