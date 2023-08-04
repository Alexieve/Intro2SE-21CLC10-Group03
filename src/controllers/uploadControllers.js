const Account = require('../models/Account')
const Book = require('../models/Book')
const Volume = require('../models/Volume')
const Chapter = require('../models/Chapter')
const Genre = require('../models/Genre')
const jwt = require('jsonwebtoken')


const handleErrors = (err) => {
    console.log(err.message, err.code);
    let errors = {
        profileName: '',
        username: '',
        password: '',
        sdt: '',
        dob: ''
    }

    if (err.message === 'Tên đăng nhập hoặc mật khẩu không chính xác') {
        errors.password = 'Tên đăng nhập hoặc mật khẩu không chính xác';
    }

    if (err.message === 'Tên đăng nhập hoặc số điện thoại không chính xác') {
        errors.password = 'Tên đăng nhập hoặc số điện thoại không chính xác';
    }

    //exists username error
    if (err.code === 11000) {
        errors.username = 'Tên đăng nhập đã tồn tại';
        return errors;
    }

    // validation errors
    if (err.message.includes('accounts validation failed')){
        Object.values(err.errors).forEach(({properties}) => {
            errors[properties.path] = properties.message;
        });
    }
    return errors;
}

const maxAge = 3 * 24 * 60 * 60;
const createToken = (id) => {
    return jwt.sign({id}, 'information of user', {
        expiresIn: maxAge
    })
}

module.exports.upload_get = (req, res) => {
    const token = req.cookies.jwt;

    if (token) {
        jwt.verify(token, 'information of user', async (err, decodedToken) => {
            if (err) {
                console.log(err.message);
            }
            else {
                user = await Account.findById(decodedToken.id);
                console.log(user)
                let books = []

                books = await Book.aggregate([
                  {
                      $match: {author: user.userID, isPending: 0,},
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
                      // Add other book fields here if needed
                      volumes: { $push: '$volumes' }, // Group volumes back into an array
                    },
                  },
                ]).sort('bookID');
                
                genres = await Genre.find({}).sort('genreName');
                res.locals.genres = genres;
                // console.log(genres)
                res.render('upload', {books})
            }
        })
    }
}


module.exports.upload_post = async (req, res) => {
    // console.log(req.body)
    // const username = req.body.username
    // const password = req.body.password

    // try {
    //     const user = await Account.login(username, password);
    //     const token = createToken(user._id)
    //     res.cookie('jwt', token, {httpOnly: true, maxAge: maxAge * 1000})
    //     res.status(200).json({user: user._id});
    // }
    // catch (err) {
    //     const errors = handleErrors(err);
    //     res.status(400).json({errors})
    // }
}