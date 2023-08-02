// profileController.js
const mongoose = require('mongoose')
const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');
const Book = require('../models/Book');
const bcrypt = require('bcrypt');
const fs = require('fs');


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

    if (!user) {
      throw new Error('User not found');
    }

    // Helper function to get the full cover image path
    const coverImagePath = getCoverImagePath(user.coverURL);

    // Assuming you have a 'profile' view to render the profile page
    const chaptersCount = await countChapters(matchedBooks);
    res.render('profile', { user, coverImagePath, formatDate, matchedBooks, checkOldPassword, chaptersCount ,formatStatus});
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};

// Helper function to get the full cover image path
const getCoverImagePath = (coverURL) => {
  // Assuming the ProfileCover folder is inside the DataBase directory
  const databaseDir = path.join(__dirname, '../database');
  return path.join(databaseDir, 'ProfileCover', coverURL);
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

// Function to count the total number of chapter files posted by an author in their books
async function countChapters(matchedBooks) {
 
  // Ensure matchedBooks is an array of plain JavaScript objects with bookID field
  const books = Array.isArray(matchedBooks)
    ? matchedBooks.filter((book) => book && book.bookID)
    : [];

  const bookDirectory = path.join(__dirname, '../database/Book');
  let chaptersCount = 0;

  // Iterate over each book in the books array
  for (const book of books) {
    const bookID = book.bookID;
    const bookFolderName = `Book${bookID}`;
    const bookPath = path.join(bookDirectory, bookFolderName);
    console.log(bookPath)
    try {
      // Check if the book folder is a directory
      const isBookFolder = (await fs.promises.stat(bookPath)).isDirectory();

      if (isBookFolder) {
        // Read the contents of the book directory
        const volumeFolders = await fs.promises.readdir(bookPath);

        // Check if the book belongs to the specified author (by comparing the authorID with the folder name)
        const bookBelongsToAuthor = bookFolder === `Book${authorID}`;

        if (bookBelongsToAuthor) {
          // Iterate over each volume folder
          for (const volumeFolder of volumeFolders) {
            const volumePath = path.join(bookPath, volumeFolder);

            try {
              // Check if the volume folder is a directory
              const isVolumeFolder = (await fs.promises.stat(volumePath)).isDirectory();

              if (isVolumeFolder) {
                // Read the contents of the volume directory
                const chapterFiles = await fs.promises.readdir(volumePath);

                // Increment the chaptersCount with the number of chapter files in the volume directory
                chaptersCount += chapterFiles.length;
              }
            } catch (err) {
              // Handle the error when the volume folder does not exist
              console.error(`Error reading volume folder: ${volumePath}`);
            }
          }
        }
      }
    } catch (err) {
      // Handle the error when the book folder does not exist
      console.error(`Error reading book folder: ${bookPath}`);
    }
  }

  return chaptersCount;
}















