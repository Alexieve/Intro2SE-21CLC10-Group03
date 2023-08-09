const Book = require('../models/Book');
const BookGenre = require('../models/BookGenre');
const Volume = require('../models/Volume');
const Chapter = require('../models/Chapter');
const Genre = require('../models/Genre'); // Import the Genre model
const blobServiceClient = require('../middleware/database');
const fs = require('fs').promises;
const path = require('path'); // Import the 'path' module for file path operations

const bookInfo_get = async (req, res) => {
  try {
    const bookID = parseInt(req.params.id);
    const bookGenres = await BookGenre.find({ bookID });
    const genres = await Genre.find();

    const pipeline = [
      {
        $match: {
          bookID: bookID
        }
      },
      {
        $lookup: {
          from: 'volumes',
          localField: 'bookID',
          foreignField: 'bookID',
          as: 'volumes'
        }
      },
      {
        $unwind: {
          path: '$volumes',
          preserveNullAndEmptyArrays: true
        }
      },
      {
        $lookup: {
          from: 'chapters',
          let: { volID: '$volumes.volID' },
          pipeline: [
            {
              $match: {
                $expr: { $eq: ['$volID', '$$volID'] }
              }
            }
          ],
          as: 'volumes.chapters'
        }
      },
      {
        $group: {
          _id: '$_id',
          bookID: { $first: '$bookID' },
          title: { $first: '$title' },
          author: { $first: '$author' },
          note: { $first: '$note' },
          summary: { $first: '$summary' },
          publishDate: { $first: '$publishDate' },
          coverImg: { $first: '$coverImg' },
          status: { $first: '$status' },
          totalview: { $first: '$totalview' },
          isPending: { $first: '$isPending' },
          authorName: { $first: '$authorName' },
          volumes: { $push: '$volumes' }
        }
      }
    ];

    const booksWithVolumesAndChapters = await Book.aggregate(pipeline);

    if (!booksWithVolumesAndChapters.length) {
      return res.status(404).render('404');
    }

    const book = booksWithVolumesAndChapters[0];

    // Construct the correct file paths for summary and note files
    const summaryFilePath = path.join(__dirname, `https://happinovel.blob.core.windows.net/book/Book${bookID}/summary${bookID}.txt`);
    const noteFilePath = path.join(__dirname, `https://happinovel.blob.core.windows.net/book/Book${bookID}/note${bookID}.txt`);

    // Read the summary and note content files asynchronously
    const [summaryContent, noteContent] = await Promise.all([
      fs.readFile(summaryFilePath, 'utf-8').catch(err => 'Ko có tóm tắt'),
      fs.readFile(noteFilePath, 'utf-8').catch(err => 'Ko có note'),
    ]);

    // Render the bookInfo view with all the data
    res.render('bookInfo', {
      book,
      summaryContent,
      noteContent,
      bookGenres,
      genres,
      blobServiceClient,
    });

  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  }
};

module.exports = {
  bookInfo_get,
};
