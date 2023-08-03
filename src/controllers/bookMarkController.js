// profileController.js

// Assuming you have a 'User' model to fetch user data
const mongoose = require('mongoose')
const Account = require('../models/Account');
const jwt = require('jsonwebtoken');
const path = require('path');
const Book = require('../models/Book');
const bcrypt = require('bcrypt');
const fs = require('fs');


exports.bookmark = (req, res) => {
 
  const user = req.user;

  // Assuming you have a 'profile' view to render the profile page
  res.render('bookmark', { user });
};