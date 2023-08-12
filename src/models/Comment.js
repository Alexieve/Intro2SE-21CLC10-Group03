const mongoose = require("mongoose")
const {isAlphanumeric} = require('validator')

const commentSchema = new mongoose.Schema ({
    commentID: {
        type: String,
        require: true,
    },
    bookID: {
        type: Number,
        require: true,
    },
    userID: {
        type: Number,
        require: true,
    },
    contentfile: {
        type: String,
        required: [true, 'Vui lòng nhập bình luận!'],
    },
    publishDate: {
        type: Date,
        default: Date(),
        require: true,
    },
    status: {
        type: Number,
        default: 1,
        require: true,
    },
    
});


const Comment = mongoose.model("comments", commentSchema);
module.exports = Comment
