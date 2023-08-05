// profileController.js
const mongoose = require('mongoose')
const BookMark = require('../models/BookMark');
const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');
const Book = require('../models/Book');
const bcrypt = require('bcrypt');
const fs = require('fs');
const Comment = require('../models/Comment');
const {bookContainer} = require("../middleware/database");

// Import the formatDate function from dateHelpers.js
const formatDate = require('../public/js/dateHelpers');
const formatStatus = require('../public/js/statusBook');

exports.profilePage = async (req, res) => {
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error('No JWT token found');
    }

    const decodedToken = jwt.verify(token, 'information of user');
    const user = await Account.findById(decodedToken.id);
    const matchedBooks = await Book.find({ author: user.userID });
    const BookMId = await BookMark.find({ userID: user.userID });
    const Makedbook = [];

    for (const bookmark of BookMId) {
      try {
        const bookID = bookmark.bookID;
        const book = await Book.findOne({ bookID }); // Assuming you have a 'Book' model
  
        if (book) {
          // Book with the given bookID found, add it to the array
          Makedbook.push(book);
        }
      } catch (err) {
        console.error('Error finding book:', err);
      }
    }
    if (!user) {
      throw new Error('User not found');
    }

    const NumComment = await Comment.find({ userID: user.userID });

    // Helper function to get the full cover image path
    // Assuming you have a 'profile' view to render the profile page
    const chaptersCount = await countChapters(matchedBooks);
    res.render('profile', {formatDate, matchedBooks, checkOldPassword, chaptersCount ,formatStatus, Makedbook, NumComment});
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};


const checkOldPassword = async (user, oldPassword) => {
  try {
    // Check if the old password matches the hashed password stored in the user object
    const isPasswordMatch = await bcrypt.compare(oldPassword, user.password);
    return isPasswordMatch;
  } catch (err) {
    console.error('Error checking old password:', err);
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
  const prefix = bookDirectory + '/Volume';
  if (blobName.startsWith(prefix)) {
    const endIndex = blobName.indexOf('/', prefix.length);
    if (endIndex !== -1) {
      return blobName.slice(0, endIndex);
    }
  }
  return null;
}

















