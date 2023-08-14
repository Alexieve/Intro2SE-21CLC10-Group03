<<<<<<< HEAD
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
=======
const Account = require('../models/Account')
const Book = require('../models/Book')
const Genre = require('../models/Genre')
const BookGenre = require('../models/BookGenre')
const BookMark = require('../models/BookMark')
const Volume = require('../models/Volume')
const Chapter = require('../models/Chapter')
const Comment = require('../models/Comment')
const Rating = require('../models/Rating')

const jwt = require('jsonwebtoken')
const cheerio = require('cheerio');
const {bookcoverContainer, bookContainer, commentContainer, ratingContainer, avatarContainer} = require('../middleware/database')
const ReadingHistory = require('../models/ReadingHistory')

async function streamToText(readableStream) {
  return new Promise((resolve, reject) => {
    const chunks = [];
    readableStream.on('data', (data) => {
      chunks.push(data.toString());
    });
    readableStream.on('end', () => {
      resolve(chunks.join(''));
    });
    readableStream.on('error', reject);
  });
}
>>>>>>> fcc6e07fac3727a8c1b627bc2af571319432f847

async function countWordsInHtml(htmlString) {
  const $ = cheerio.load(htmlString);
  const textContent = $('body').text(); // Extract text content from the <body> element

  // Split the text content into words using space as a delimiter
  const words = textContent.split(/\s+/);

  // Filter out any empty strings
  const nonEmptyWords = words.filter(word => word.trim() !== '');

  return nonEmptyWords.length;
}

module.exports.reading = async (req, res) => {
  try{
    chapObjID = req.params.chapID
    bookID = Number(req.params.bookID)

    let curChap = await Chapter.findById(chapObjID)
    let curVol = await Volume.findOne({bookID: bookID, volID: curChap.volID})
    let nextChap = ((await Chapter.findOne(
      {bookID: bookID, volID: curChap.volID, chapID: curChap.chapID + 1}))
      || (await Chapter.findOne(
      {bookID: bookID, volID: curChap.volID + 1, chapID: 1})))
      || ''
    
    let nextVol = ''
    if (nextChap) nextVol = await Volume.findOne({bookID: bookID, volID: nextChap.volID})
    
    let prevChap = ''
    let prevVol = ''
    if (curChap.chapID != 1) {
      prevChap = await Chapter.findOne({bookID: bookID, volID: curChap.volID, chapID: curChap.chapID - 1})
      prevVol = curVol
      // console.log(prevChap)
    }
    else if(curChap.chapID == 1 && curChap.volID != 1) {
      prevVol = await Volume.findOne({bookID: bookID, volID: curChap.volID - 1})
      prevChap = await Chapter.findOne({bookID: bookID, volID: curChap.volID - 1}).sort({chapID: -1}).lean().exec()
      // console.log(prevChap)
    }
    // console.log(prevChap, curChap, nextChap)
    // console.log(prevVol, curVol, nextVol)

    const chapFile = bookContainer.getBlobClient(`Book${bookID}/Volume${curChap.volID}/${curChap.contentfile}`)

    try {
      const resChap = await chapFile.download();
      const contentChap = await streamToText(resChap.readableStreamBody);
      curChap.contentfile = contentChap
    } catch (error) {
      curChap.contentfile = ''
    }

    const wordCount = await countWordsInHtml(curChap.contentfile)
    isPrevChap = true
    isNextChap = true
    if (prevChap == '') isPrevChap = false
    if (nextChap == '') isNextChap = false

<<<<<<< HEAD
    res.render('bookInfo', { book, bookGenres, genres, blobServiceClient });
=======
    const token = req.cookies.jwt;
    let curUser
    if (token) {
      try {
        const decodedToken = await new Promise((resolve, reject) => {
            jwt.verify(token, 'information of user', (err, decoded) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(decoded);
                }
            });
        });

        const findUser = await Account.findById(decodedToken.id)
        const checkHistory = await ReadingHistory.findOne({userID: findUser.userID, bookID: curChap.bookID})
        const deleted = await ReadingHistory.findOneAndDelete({userID: findUser.userID, bookID: curChap.bookID})
        await ReadingHistory.create({userID: findUser.userID, bookID: curChap.bookID, volID: curChap.volID, chapID: curChap.chapID})
        const cntHistory = await ReadingHistory.find({userID: findUser.userID}).countDocuments()
        if (cntHistory == 11) {
          await ReadingHistory.findOneAndDelete({userID: findUser.userID}, {sort: {_id: 1}})
        }
      } catch (error) {
          console.error('Token verification error:', error);
      }
    }
    else {
      checkbookmark = ''
      curUser = new Account
      curUser.permission = 3
    }
>>>>>>> fcc6e07fac3727a8c1b627bc2af571319432f847

    res.render('reading', {curVol, prevChap, curChap, nextChap, wordCount, isPrevChap, isNextChap})
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  }
}

module.exports.bookInfo_get = async (req, res) => {
  try {
      const bookID = req.params.id;

      let book = await Book.findOne({bookID: bookID,})
      if (!book) {
        return res.status(404).render('404');
      }

      book.volumes = await Volume.find({ bookID }).sort({volID: 1})

      book.volumes.forEach(async element => {
        element.chapters = await Chapter.find({bookID: bookID, volID: element.volID}).sort({chapID: 1});
      })
  
      const bookGenres = await BookGenre.find({ bookID })
      const genresID = bookGenres.map(BookGenre => BookGenre.genreID)
      const genresOfBook = await Genre.find({genreID: {$in: genresID}})

      let author = await Account.findOne({userID: book.author})

      const summaryFile = bookContainer.getBlobClient(`Book${bookID}/${book.summary}`)
      const noteFile = bookContainer.getBlobClient(`Book${bookID}/${book.note}`)

      try {
        const resSummary = await summaryFile.download();
        const contentSummary = await streamToText(resSummary.readableStreamBody);
        book.summary = contentSummary
      } catch (error) {
        book.summary = ''
      }

      try {
        const resNote = await noteFile.download();
        const contentNote = await streamToText(resNote.readableStreamBody);
        book.note = contentNote
      } catch (error) {
        book.note = ''
      }

      author.avatarURL = avatarContainer.getBlobClient(author.avatarURL).url
      book.coverImg = bookcoverContainer.getBlobClient(book.coverImg).url

      let comments = await Comment.find({bookID: bookID}).sort('publishDate')
      let userIDOfComments = comments.map(Comment => Comment.userID)
      let usersOfComment = await Account.find({ userID: { $in: userIDOfComments } }).select({
        _id: 1,
        userID: 1,
        profileName: 1,
        avatarURL: 1
      });

      usersOfComment.forEach(async element => {
        element.avatarURL = avatarContainer.getBlobClient(element.avatarURL).url
      })

      const userMap = new Map();
      usersOfComment.forEach(user => {
        userMap.set(user.userID, user);
      });

      // Combine comments with user information
      const commentsList = comments.map(comment => {
        const user = userMap.get(comment.userID);
        const { _id, ...commentWithoutId } = comment._doc;
      
        return {
          _id,
          ...commentWithoutId,
          user: {
            userID: user.userID,
            profileName: user.profileName,
            avatarURL: user.avatarURL
          }
        };
      })

      commentsList.sort((a, b) => new Date(b.publishDate) - new Date(a.publishDate));

      // console.log(commentsList)

      const token = req.cookies.jwt;
      let curUser
      let checkbookmark
      if (token) {
        try {
          const decodedToken = await new Promise((resolve, reject) => {
              jwt.verify(token, 'information of user', (err, decoded) => {
                  if (err) {
                      reject(err);
                  } else {
                      resolve(decoded);
                  }
              });
          });
  
          const findUser = await Account.findById(decodedToken.id)
          curUser = findUser;
          const userbookmark = await BookMark.findOne({bookID: bookID, userID: findUser.userID})
          if (userbookmark) checkbookmark = userbookmark._id
      } catch (error) {
          console.error('Token verification error:', error);
      }
      }
      else {
        checkbookmark = ''
        curUser = new Account
        curUser.permission = 3
      }

      curUser.avatarURL = avatarContainer.getBlobClient(curUser.avatarURL).url


      countbookmark = await BookMark.find({bookID: bookID}).countDocuments({})
      await Book.updateOne({bookID: bookID}, {totalview: book.totalview + 1})

      
      let ratingCount = 0;
      let ratingScore = 0;

      ratingCount = await Rating.find({bookID: bookID}).countDocuments({})
      if (ratingCount != 0) {
        (await Rating.find({bookID: bookID})).forEach(rating => {
          ratingScore += rating.score;
        });
        ratingScore /= ratingCount
        ratingScore = ratingScore.toFixed(2)
      }
      // console.log(ratingScore)

      res.render('bookInfo', { book, genresOfBook, author, commentsList, countbookmark, checkbookmark, curUser, ratingData: {ratingScore, ratingCount}}); // Pass genres to the view
  } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
  }
};

<<<<<<< HEAD
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
=======

module.exports.bookmark = async (req, res) => {
  try {
    objID = req.body.objID 
    // check = await BookMark.findById(objID)
    // console.log(req.body)
    if (objID != '') {
      await BookMark.findByIdAndDelete(objID)
      res.status(200).json('');
    }
    else {
      curUserID = Number(req.body.curUserID)
      const newBookMark = await BookMark.create({userID: curUserID, bookID: req.params.id})
      // console.log(newBookMark)
      res.status(200).json({objID: newBookMark._id});
    }
    // res.status(200).json('ok');
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

module.exports.rating = async (req, res) => {
  try {
    
    curUserID = Number(req.body.curUserID)
    score = Number(req.body.score)
    const newRating = await Rating.findOneAndUpdate(
      {bookID: req.params.id, userID: curUserID},
      {bookID: req.params.id, userID: curUserID, score: score},
      {upsert: true}
    )
    // const newRating = await Rating.updateOne({bookID: req.params.id, userID: curUserID, score: score}, )
    // console.log(newRating)
    res.status(200).json('ok');
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

module.exports.addComment = async (req, res) => {
  try {
    userID = Number(req.body.userID)
    bookID = req.params.id
    contentfile = req.body.commentContent
    try {
      const cmt = await Comment.create({bookID: bookID, userID: userID, contentfile: contentfile})
      cmt.save()
      res.status(200).json(cmt._id);
    } catch (err) {
      console.log(err)
      res.status(400).json({err})
    }
    
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

module.exports.deleteComment = async (req, res) => {
  try {
    cmtID = req.body.cmtID
    try {
      await Comment.findByIdAndDelete(cmtID)
      res.status(200).json('ok');
    } catch (err) {
      console.log(error)
      res.status(400).json({err})
    }
    
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

module.exports.reportComment = async (req, res) => {
  try {
    cmtID = req.body.cmtID
    await Comment.findOneAndUpdate({_id: cmtID}, {status: 1})
    res.status(200).json('ok');
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

module.exports.banUser = async (req, res) => {
  try {
    cmtID = req.body.cmtID
    const cmt = await Comment.findOne({_id: cmtID})
    await Account.findOneAndUpdate({userID: cmt.userID}, {status: 1})
    res.status(200).json('ok');
  }
  catch (err) {
      console.log(err)
      res.status(400).json({err})
  }
}

>>>>>>> fcc6e07fac3727a8c1b627bc2af571319432f847
