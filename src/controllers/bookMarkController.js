
// Assuming you have a 'User' model to fetch user data
const mongoose = require('mongoose')
const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');
const Book = require('../models/Book');
const BookMark = require('../models/BookMark');
const bcrypt = require('bcrypt');
const fs = require('fs');

exports.bookmark = async (req, res) => { // <-- Add 'async' here
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error('No JWT token found');
    }

    const decodedToken = jwt.verify(token, 'information of user');
    const user = await Account.findById(decodedToken.id);
    const BookMId = await BookMark.find({ userID: user.userID });
    console.log(BookMId)
    const matchedBooks = [];

// Loop through the bookmarks and find the matching books
  for (const bookmark of BookMId) {
    try {
      const bookID = bookmark.bookID;
      const book = await Book.findOne({ bookID }); // Assuming you have a 'Book' model

      if (book) {
        // Book with the given bookID found, add it to the array
        matchedBooks.push(book);
      }
    } catch (err) {
      console.error('Error finding book:', err);
    }
  }

// Now the matchedBooks array contains the books that matched the bookIDs in BookMId
    console.log(matchedBooks);
    
    if (!user) {
      throw new Error('User not found');
    }

    // Helper function to get the full cover image path
    

    
    res.render('bookmark', { user,matchedBooks });
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};
