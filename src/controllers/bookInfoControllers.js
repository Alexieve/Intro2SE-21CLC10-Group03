// controllers/bookInfoController.js

const Book = require('../models/Book'); // Replace 'Book' with your actual Book model

const bookInfo_get = async (req, res) => {
  try {
    // Fetch book information from the database based on the book ID or any other criteria you use
    const book = await Book.findById(1);

    if (!book) {
      // Handle the case where the book is not found
      return res.status(404).render('404');
    }

    res.render('bookInfo', { book }); // Render the 'bookInfo' view and pass the book data to it
  } catch (err) {
    console.log(err);
    res.status(500).render('500'); // Render the '500' view for other server errors
  }
};

module.exports = {
  bookInfo_get,
};
