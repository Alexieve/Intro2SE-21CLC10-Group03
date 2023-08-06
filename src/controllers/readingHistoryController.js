// Assuming you have a 'User' model to fetch user data
const mongoose = require("mongoose");
const Account = require("../models/Account");
const jwt = require("jsonwebtoken");
const path = require("path");
const Book = require("../models/Book");
const Volume = require("../models/Volume");
const bcrypt = require("bcrypt");
const fs = require("fs");
const { bookContainer } = require("../middleware/database");
const Chapter = require("../models/Chapter");
const ReadingHistory = require("../models/ReadingHistory");

exports.readinghistory = async (req, res) => {
  // <-- Add 'async' here
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error("No JWT token found");
    }
    const decodedToken = jwt.verify(token, "information of user");
    const user = await Account.findById(decodedToken.id);
    const BookMId = await ReadingHistory.find({ userID: user.userID });
    const uniqueBookIds = new Set();
    // Loop through the bookmarks and find the unique book IDs
    for (const readHis of BookMId) {
      uniqueBookIds.add(readHis.bookID);
    }
    const matchedBooks = [];
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

    const volumes = await Volume.find({});
    const chapters = await Chapter.find({});

    res.render("readinghistory", { matchedBooks, BookMId, chapters, volumes });
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }
};
