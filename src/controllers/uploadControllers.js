const Account = require('../models/Account')
const Book = require('../models/Book')
const BookGenre = require('../models/BookGenre')
const Volume = require('../models/Volume')
const Chapter = require('../models/Chapter')
const Genre = require('../models/Genre')
const jwt = require('jsonwebtoken')

module.exports.upload_get = (req, res) => {
    const token = req.cookies.jwt;

    if (token) {
        jwt.verify(token, 'information of user', async (err, decodedToken) => {
            if (err) {
                console.log(err.message);
            }
            else {
                user = await Account.findById(decodedToken.id);
                // console.log(user)
                let books = []

                books = await Book.aggregate([
                  {
                      $match: {author: user.userID, isPending: 0},
                  },
                  {
                    $lookup: {
                      from: 'volumes', // Replace 'volumes' with the name of the volumes collection
                      localField: 'bookID',
                      foreignField: 'bookID',
                      as: 'volumes',
                    },
                  },
                  {
                    $unwind: '$volumes', // Unwind the volumes array
                  },
                  {
                    $lookup: {
                      from: 'chapters', // Replace 'chapters' with the name of the chapters collection
                      let: { bookID: '$bookID', volID: '$volumes.volID' }, // Use 'bookID' and 'volID' as local fields
                      pipeline: [
                        {
                          $match: {
                            $expr: {
                              $and: [
                                { $eq: ['$bookID', '$$bookID'] },
                                { $eq: ['$volID', '$$volID'] },
                                { $eq: ['$isPending', 0] },
                              ],
                            },
                          },
                        },
                      ],
                      as: 'volumes.chapters', // The matched chapters will be placed in the 'chapters' array within 'volumes'
                    },
                  },
                  {
                    $group: {
                      _id: '$_id', // Group back by the book's original _id
                      bookID: { $first: '$bookID' }, // Preserve the book's fields
                      title: { $first: '$title' },
                      author: { $first: '$author' },
                      note: { $first: '$note' },
                      summary: { $first: '$summary' },
                      coverImg: { $first: '$coverImg' },
                      authorName: { $first: '$authorName' },
                      publishDate: { $first: '$publishDate' },
                      // Add other book fields here if needed
                      volumes: { $push: '$volumes' }, // Group volumes back into an array
                    },
                  },
                ]).sort('publishDate');
                
                const genres = await Genre.find({}).sort('genreName');
                // res.locals.genres = genres;
                // console.log(genres)
                // const formPath = "partials/upload/uploadBook"
                // res.sendFile(formPath)
                res.render('upload', {books, genres})
            }
        })
    }
}


module.exports.upload_post = async (req, res) => {
    console.log(req.body)
    const postName = req.body.postName
    const bookID = req.body.bookID
    const volID = req.body.volID
    const chapID = req.body.chapID
    if (postName == "form3") {
      try {
        const volData = await Volume.find({bookID: bookID});
        // console.log(volData)
        res.status(200).json({data: volData});
      }
      catch (err) {
          console.log(err)
          // const errors = handleErrors(err);
          res.status(400).json({err})
      }
    }
    else if (postName == "form4") {
      try {
        const bookData = await Book.findById(bookID);
        const bookGenres = await BookGenre.find({bookID: bookData.bookID})
        // console.log(bookGenres)
        res.status(200).json({book: bookData, genre: bookGenres});
      }
      catch (err) {
          console.log(err)
          // const errors = handleErrors(err);
          res.status(400).json({err})
      }
    }
    else if (postName == "form5") {
      try {
        const volData = await Volume.findById(volID);
        const bookData = await Book.find({bookID: volData.bookID})
        // console.log(bookData)
        res.status(200).json({vol: volData, book: bookData});
      }
      catch (err) {
          console.log(err)
          // const errors = handleErrors(err);
          res.status(400).json({err})
      }
    }
    else if (postName == "form6") {
      try {
        const chapData = await Chapter.findById(chapID);
        const bookData = await Book.find({bookID: chapData.bookID})
        const volData = await Volume.find({bookID: chapData.bookID, volID: chapData.volID})
        // console.log(volData)
        res.status(200).json({book: bookData, vol: volData, chap: chapData});
      }
      catch (err) {
          console.log(err)
          // const errors = handleErrors(err);
          res.status(400).json({err})
      }
    }
}