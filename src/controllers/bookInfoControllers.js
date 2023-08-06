const Book = require('../models/Book');
const BookGenre = require('../models/BookGenre');
const Volume = require('../models/Volume');
const Chapter = require('../models/Chapter');
const Genre = require('../models/Genre'); // Import the Genre model
const blobServiceClient = require('../middleware/database');


const bookInfo_get = async (req, res) => {
  try {
      const bookID = req.params.id;

      const book = await Book.findOne({ bookID }).populate('volumes');
      const volumes = await Volume.find({ bookID }).populate('chapters');
      const bookGenres = await BookGenre.find({ bookID }).populate('genreID'); // Populate genreID field
      const genres = await Genre.find(); // Fetch all genres
      if (!book) {
        // Handle the case where the book is not found
        return res.status(404).render('404');
      }
      res.render('bookInfo', { book, volumes, bookGenres, genres, blobServiceClient }); // Pass genres to the view
  } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
  }
};

module.exports = {
  bookInfo_get,
};
