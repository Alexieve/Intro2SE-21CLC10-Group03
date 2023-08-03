const mongoose = require("mongoose");
const { isAlphanumeric } = require("validator");

const bookMarkSchema = new mongoose.Schema({
  bookID: {
    type: Number,
    required: true,
    unique: true, // If each bookmark should have a unique bookID, keep this. Otherwise, remove it.
  },
  userID: {
    type: Number,
    required: true,
    unique: true, // If each bookmark should have a unique userID, keep this. Otherwise, remove it.
  },
});

const BookMark = mongoose.model("BookMark", bookMarkSchema); // Use singular "BookMark" as the model name

module.exports = BookMark;
