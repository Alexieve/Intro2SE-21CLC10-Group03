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

exports.notification = async (req, res) => {
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
   
    if (!user) {
      throw new Error("User not found");
    }


    res.render("notification", {});
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }
};
