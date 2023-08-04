const Book = require('../models/Book');
const ReadingHistory = require('../models/ReadingHistory');
const BookMark = require('../models/BookMark')
const Account = require('../models/Account');
const Chapter = require('../models/Chapter')
const {bookcoverContainer} = require("../middleware/database");
const jwt = require('jsonwebtoken');

const getMostFollowedBook = async () => {
  try {
    const mostFollowedBooks = await BookMark.aggregate([
      {
        $group: {
          _id: "$bookID",
          bookmarkCount: { $sum: 1 }
        }
      },
      {
        $sort: {
          bookmarkCount: -1 // Sort by bookmarkCount in descending order (most bookmarks first)
        }
      },
      {
        $limit: 3 // Limit the results to the top three books
      },
      {
        $project: {
          _id: 0,
          bookID: "$_id",
          bookmarkCount: 1
        }
      }
    ]).exec();
    return mostFollowedBooks;
  } catch (err) {
    console.error("Error fetching books: ", err);
    res.status(500).send("Error fetching books");
  }
};

const getNewestChapter = async () => {
  try {
    const newestChapters = await Chapter.aggregate([
      {
        $sort: {
          bookID: 1, // Sort by bookID in ascending order (to group chapters of the same book together)
          publishDate: -1 // Sort by publishDate in descending order (latest chapter first)
        }
      },
      {
        $group: {
          _id: "$bookID",
          latestChapter: { $first: "$$ROOT" } // Get the first document (latest chapter) for each bookID group
        }
      },
      {
        $replaceRoot: {
          newRoot: "$latestChapter" // Replace the root document with the latestChapter document
        }
      },
      {
        $limit: 16 // Limit the results to the top 16 latest chapters
      }
    ]).exec();

    return newestChapters;
  } catch (err) {
    console.error("Error fetching chapters: ", err);
    res.status(500).send("Error fetching chapters");
  }
};


const getNewestBook = async() =>{
  try {
    const newestBooks = await Book.find().sort({ Date: -1 }).limit(4).exec();
    return newestBooks;
  } catch (err) {
    console.error("Error fetching books: ", err);
    res.status(500).send("Error fetching books");
  }  
}

const getReadingHistory = async (UserID) => {
  try {
    const readingHistory = await ReadingHistory.find({userID:UserID}).limit(3).exec();
    console.log(readingHistory.length);
    return readingHistory;
  } catch (err) {
    console.error('Error fetching reading history:', err);
    throw err;
  }
};
const getMostViewBooks = async (limit) => {
  try {
    const mostViewBooks = await Book.find().sort({ views: -1 }).limit(limit).exec();
    return mostViewBooks;
  } catch (err) {
    console.error("Error fetching books: ", err);
    res.status(500).send("Error fetching books");
  }
};

const getFinishedBooks = async() =>{
  try {
    const finishedBooks = await Book.find({status : 2}).limit(12).exec();
    return finishedBooks;
  } catch (err) {
    console.error("Error fetching books: ", err);
    res.status(500).send("Error fetching books");
  }  
}

const getBooksAndReadingHistory = async (req, res) => {
  try {
    const mostViewBooks = await getMostViewBooks(12); // Fetch most viewed books
    const newestBooks = await getNewestBook();
    const mostFollowedBooks = await getMostFollowedBook()
    const newestChapter = await getNewestChapter()
    const finishedBooks = await getFinishedBooks()
    const books =  await Book.find()
    const bookHashMap = {};
    const bookCoverURL = {};
    books.forEach((book) => {
      bookHashMap[book.bookID] = book;
      bookCoverURL[book.bookID] = bookcoverContainer.getBlobClient(book.coverImg).url
    });
    console.log(bookCoverURL)
    const token = req.cookies.jwt;
    let readingHistory = [];
    if (token) {
      const decodedToken = jwt.verify(token, 'information of user');
      const user = await Account.findById(decodedToken.id);
      if (user) {
        console.log(user.userID);
        readingHistory = await getReadingHistory(user.userID); // Fetch reading history data if the user is logged in
      }
    }
    res.render('home', { mostViewBooks,readingHistory,bookHashMap, newestBooks,mostFollowedBooks, newestChapter, finishedBooks, bookCoverURL }); // Pass both books and readingHistory to the home.ejs template
  } catch (err) {
    console.error('Error fetching books and reading history:', err);
    res.status(500).send('Internal Server Error');
  }
};
module.exports = {
  getBooksAndReadingHistory,
};