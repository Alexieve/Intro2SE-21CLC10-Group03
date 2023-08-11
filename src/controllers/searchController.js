const Book = require('../models/Book');
const Genres = require('../models/Genre');
const BookGenre = require('../models/BookGenre')
const { bookcoverContainer } = require('../middleware/database');

const getBooksByTitle = async (titleSearch) => {
  try {
    let query = {};
    if (titleSearch && titleSearch.trim() !== "") {
      query = { title: { $regex: titleSearch, $options: "i" } };
    }
    const books = await Book.find(query).exec();
    return books;
  } catch (err) {
    throw new Error("Error fetching books by title: " + err.message);
  }
};


const getBooksByAuthor = async (authorSearch) => {
  try {
    let query = {};
    if (authorSearch && authorSearch.trim() !== "") {
      query = { authorName: { $regex: authorSearch, $options: "i" } };
    }
    const books = await Book.find(query).exec();
    return books;
  } catch (err) {
    throw new Error("Error fetching books by author: " + err.message);
  }
};


const getStatusBooks = async (req, res) => {
  const selectedStatus = req.query.status;
  try {
    if (!selectedStatus || isNaN(selectedStatus) || selectedStatus === '3') {
      // Return all books if no status is selected
      const allBooks = await Book.find().exec();
      return allBooks;
    }

    const parsedStatus = parseInt(selectedStatus);
    const statusBooks = await Book.find({ status: parsedStatus }).exec();
    return statusBooks;
  } catch (err) {
    console.error("Error fetching books by status: ", err);
    throw new Error("Error fetching books by status");
  }
};


const getBooksByGenres = async (selectedGenres) => {
  try {
    if (!selectedGenres) {
      return await Book.find().exec();
    }

    // Convert selectedGenres to an array of numbers if it's not an array
    const selectedGenreIDs = Array.isArray(selectedGenres) ? selectedGenres.map(Number) : [Number(selectedGenres)];

    const booksWithSelectedGenres = await BookGenre.find({ genreID: { $in: selectedGenreIDs } }).exec();
    const bookIDs = booksWithSelectedGenres.map(entry => entry.bookID);

    const books = await Book.find({ bookID: { $in: bookIDs } }).exec();

    // Filter out books that do not have all selected genres
    const filteredBooks = books.filter(book => {
      const genresInBook = bookIDs.filter(id => book.bookID === id);
      return selectedGenreIDs.every(id => genresInBook.includes(id));
    });

    return filteredBooks;
  } catch (err) {
    throw new Error("Error fetching books by genres: " + err.message);
  }
};

const getSearchResult = async (req, res) => {
  try {
    const genres = await Genres.find().sort({ genreName: 1 }).exec();

    const titleBooksNav = await getBooksByTitle(req.query.navSearch);
    //console.log(titleBooksNav);
    const titleBooksFilter = await getBooksByTitle(req.query.filterSearch);
    const authorBooks = await getBooksByAuthor(req.query.authorSearch);
    const statusBooks = await getStatusBooks(req,res);
    const genresBooks = await getBooksByGenres(req.query.genre);
    const allBooks = await Book.find().exec();
    const intersectedBooks = allBooks.filter(book =>
      titleBooksNav.some(navBook => navBook._id.equals(book._id)) &&
      titleBooksFilter.some(filterBook => filterBook._id.equals(book._id)) &&
      authorBooks.some(authorBook => authorBook._id.equals(book._id)) &&
      statusBooks.some(statusBook => statusBook._id.equals(book._id)) &&
      genresBooks.some(genresBook => genresBook._id.equals(book._id))
    );
    

    const bookHashMap = {};
    const bookCoverURL = {};
    intersectedBooks.forEach((book) => {
      bookHashMap[book.bookID] = book;
      bookCoverURL[book.bookID] = bookcoverContainer.getBlobClient(book.coverImg).url;
    });

    res.render('filter', { genres, intersectedBooks, bookHashMap, bookCoverURL });
  } catch (err) {
    console.error('Error fetching books: ', err);
    res.status(500).send('Error fetching books');
  }
};

module.exports = {
  getSearchResult,
};
