const Account = require('../models/Account')
const Book = require('../models/Book')
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

module.exports.upload_get =(req, res) => {
    res.render('upload')
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