const mongoose = require("mongoose")
const {isAlphanumeric} = require('validator')

const ratingSchema = new mongoose.Schema ({
    bookID: {
        type: Number,
        require: true,
    },
    userID: {
        type: Number,
        require: true,
    },
    contentFile: {
        type: String,
        required: [true, 'Vui lòng đánh giá!'],
    },
    score: {
        type: Float32Array,
        default: 0,
        require: true,
    },
    
});


const Rating = mongoose.model("ratings", ratingSchema);
module.exports = Rating