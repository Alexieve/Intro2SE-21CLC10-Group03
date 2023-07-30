const mongoose = require("mongoose")
const bcrypt = require('bcrypt')

const accountSchema = new mongoose.Schema ({
    profileName: {
        type: String,
        required: [true, 'Vui lòng nhập tên của bạn!'],
    },
    username: {
        type: String,
        unique: true,
        required: [true, 'Vui lòng nhập tài khoản!'],
        unique: true,
    },
    password: {
        type: String,
        required: [true, 'Vui lòng nhập mật khẩu!'],
        minLength: [6, 'Mật khẩu cần tối thiểu 6 ký tự!']
    },
    sdt: {
        type: String,
        required: [true, 'Vui lòng nhập số điện thoại của bạn!'],
        unique: true,
    },
    dob: {
        type: Date,
        required: [true, 'Vui lòng nhập ngày sinh của bạn!'],
    },
    bio: {
        type: String,
        required: false,
        minLength: [255, 'Giới hạn tối đa là 255 từ']
    },
    jobs: {
        type: String,
        required: false,
        minLength: [255, 'Giới hạn tối đa là 255 từ']
    },
    favorites: {
        type: String,
        required: false,
        minLength: [255, 'Giới hạn tối đa là 255 từ']
    },
    avatarURL: {
        type: String,
        required: false,
    },
    coverURL: {
        type: String,
        required: false,
    },
    status: {
        type: Number,
        default: 0,
        required: true,
    },
    regdate: {
        type: Date,
        default: Date(),
        required: true,
    },
    permission: {
        type: Number,
        default: 0,
        required: true,
    },
});

accountSchema.pre('save', async function(next){
    const salt = await bcrypt.genSalt();
    this.password = await bcrypt.hash(this.password, salt);
    next();
})

// static method to login
accountSchema.statics.login = async function(username, password) {
    const user = await this.findOne({username});
    if (user) {
        const auth = await bcrypt.compare(password, user.password);
        if (auth) {
            return user;
        }
    }
    throw Error('Tên đăng nhập hoặc mật khẩu không chính xác')
}

const Account = mongoose.model("accounts", accountSchema);
module.exports = Account