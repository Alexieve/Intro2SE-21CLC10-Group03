const Book = require('../models/Book');
const BookGenre = require('../models/BookGenre');
const Volume = require('../models/Volume');
const Chapter = require('../models/Chapter');
const Genre = require('../models/Genre'); // Import the Genre model
const blobServiceClient = require('../middleware/database');
const mongoose = require('mongoose'); // Import the mongoose library
const fs = require('fs').promises;
const path = require('path'); // Import the 'path' module for file path operations

const renderBookInfoPage = async (req, res) => {
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
            },
            {
              $addFields: {
                volName: '$$ROOT.volumes.volName' // Add the volume name to each chapter
              }
            }
          ],
          as: 'volumes.chapters'
        }
      }
    ];

    const booksWithVolumesAndChapters = await Book.aggregate(pipeline);

    if (!booksWithVolumesAndChapters.length) {
      return res.status(404).render('404');
    }

    const book = booksWithVolumesAndChapters[0];

    res.render('bookInfo', { book, bookGenres, genres, blobServiceClient });

  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  }
};

const renderReadingPage = async (req, res) => {
  try {
    const chapID = req.body.chapID;

    // Find the chapter by its ID
    const chapter = await Chapter.findById(chapID);

    if (!chapter) {
      return res.status(404).json({ message: 'Chapter not found' });
    }

    const bookData = await Book.find({ bookID: chapter.bookID });
    const volData = await Volume.find({ bookID: chapter.bookID, volID: chapter.volID });

    const path = 'https://happinovel2021.blob.core.windows.net/book/Book${bookData[0].bookID}/Volume${volData[0].volID}/${chapter.contentfile}';
    const chapFile = bookContainer.getBlobClient(path);

    try {
      const resChap = await chapFile.download();
      const chapContent = await streamToText(resChap.readableStreamBody);

      res.render('readingPage', { chapter, book: bookData[0], volume: volData[0], content: chapContent });
    } catch (error) {
      console.error("Error retrieving blob content:", error);
      res.status(500).send('Internal Server Error');
    }

  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  }
};



module.exports = {
  renderBookInfoPage,
  renderReadingPage,
};
