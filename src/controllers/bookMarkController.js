
// Assuming you have a 'User' model to fetch user data
const mongoose = require('mongoose')
const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');
const Book = require('../models/Book');
const Volume = require('../models/Volume');
const BookMark = require('../models/BookMark');
const bcrypt = require('bcrypt');
const fs = require('fs');
const matchedBooks = [];
const {bookContainer} = require("../middleware/database");
const { findLatestVolume,findVolumeName } = require('../public/js/LatestVolume');


exports.bookmark = async (req, res) => { // <-- Add 'async' here
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error('No JWT token found');
    }

    const decodedToken = jwt.verify(token, 'information of user');
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
      console.error('Error finding book:', err);
    }
  }

// Now, matchedBooks array contains unique books without duplicates


// Now the matchedBooks array contains the books that matched the bookIDs in BookMId
    
    if (!user) {
      throw new Error('User not found');
    }

    // Helper function to get the full cover image path
    const bookIDs = matchedBooks.map(book => book.bookID);
       const latestVolumeUrls = await Promise.all(matchedBooks.map(async (book) => {
      return await findLatestVolume(book.bookID, bookContainer);
    }));
    const volumes = await Volume.find({ bookID: { $in: bookIDs } });
    res.render('bookmark', { matchedBooks, bookContainer,latestVolumeUrls,volumes });
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};
