// profileController.js
const mongoose = require("mongoose");
const BookMark = require("../models/BookMark");
const Account = require("../models/Account");
const jwt = require("jsonwebtoken");
const path = require("path");
const Book = require("../models/Book");
const bcrypt = require("bcrypt");
const fs = require("fs");
const Comment = require("../models/Comment");
const { bookContainer } = require("../middleware/database");
const Genre = require("../models/Genre");
const bookgenres = require("../models/BookGenre");

// Import the formatDate function from dateHelpers.js
const formatDate = require("../public/js/dateHelpers");
const formatStatus = require("../public/js/statusBook");

exports.profilePage = async (req, res) => {
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error("No JWT token found");
    }
    const IDuser = req.params.id;

    trueIDuser = parseInt(IDuser);
    const decodedToken = jwt.verify(token, "information of user"); // will use later
    
    const user = await Account.findOne({ userID: IDuser });
    const Anotheruser = await Account.findOne({ userID: IDuser });
    const trueUser = await Account.findById(decodedToken.id);
    
    const matchedBooks = await Book.find({ author: user.userID, status: {$ne: 3} });
    const BookMId = await BookMark.find({ userID: user.userID });
    const Makedbook = [];

    for (const bookmark of BookMId) {
      try {
        const bookID = bookmark.bookID;
        const book = await Book.findOne({ bookID }); // Assuming you have a 'Book' model

        if (book) {
          if(book.status!=3){
            // Book with the given bookID found, add it to the array
            Makedbook.push(book);
        }
          
        }
      } catch (err) {
        console.error("Error finding book:", err);
      }
    }
    if (!user) {
      throw new Error("User not found");
    }
    const genreNames = [];
    const NumComment = await Comment.find({ userID: user.userID });
    for (const bookmark of BookMId) {
      const bookID = bookmark.bookID;
      
      
        const genreIDs = await bookgenres.findOne({ bookID });
        const genreID = genreIDs ? genreIDs.genreID : "Not found genre";

        const genre = await Genre.findOne({ genreID });
        const genreName = genre ? genre.genreName : "Not found genre";

        genreNames.push({ genreName });
      
    }

    const formattedGenreNames = genreNames.map((item) => item.genreName);

    // Helper function to get the full cover image path
    // Assuming you have a 'profile' view to render the profile page
    const chaptersCount = await countChapters(matchedBooks);
    res.render("profile", {
      trueUser,
      Anotheruser,
      formatDate,
      matchedBooks,
      checkOldPassword,
      chaptersCount,
      formatStatus,
      Makedbook,
      NumComment,
      formattedGenreNames,
    });
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }
};

const checkOldPassword = async (user, oldPassword) => {
  try {
    // Check if the old password matches the hashed password stored in the user object
    const isPasswordMatch = await bcrypt.compare(oldPassword, user.password);
    return isPasswordMatch;
  } catch (err) {
    console.error("Error checking old password:", err);
    return false; // Return false in case of an error
  }
};

async function countChapters(matchedBooks) {
  let chaptersCount = 0;

  for (const book of matchedBooks) {
    const bookDirectory = `Book${book.bookID}`;

    try {
      // Get the list of blobs (chapter files) in the book's directory
      const blobs = bookContainer.listBlobsFlat({ prefix: bookDirectory });

      // Filter blobs based on the book's volume directories
      const volumeDirectories = new Set();
      for await (const blob of blobs) {
        // Check if the blob belongs to a volume directory
        const volumeName = getVolumeName(bookDirectory, blob.name);
        if (volumeName) {
          volumeDirectories.add(volumeName);
          chaptersCount++;
        }
      }
    } catch (err) {
      console.error(`Error reading book directory: ${bookDirectory}`);
    }
  }

  return chaptersCount;
}

// Helper function to check if the blob belongs to a volume directory
function getVolumeName(bookDirectory, blobName) {
  const prefix = bookDirectory + "/Volume";
  if (blobName.startsWith(prefix)) {
    const endIndex = blobName.indexOf("/", prefix.length);
    if (endIndex !== -1) {
      return blobName.slice(0, endIndex);
    }
  }
  return null;
}
