// profileController.js

const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');


// Import the formatDate function from dateHelpers.js
const formatDate = require('../public/js/dateHelpers');

exports.profilePage = async (req, res) => {
  try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error('No JWT token found');
    }

    const decodedToken = jwt.verify(token, 'information of user');
    const user = await Account.findById(decodedToken.id);

    if (!user) {
      throw new Error('User not found');
    }

    // Helper function to get the full cover image path
    const coverImagePath = getCoverImagePath(user.coverURL);

    // Assuming you have a 'profile' view to render the profile page
    res.render('profile', { user, coverImagePath, formatDate });
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
