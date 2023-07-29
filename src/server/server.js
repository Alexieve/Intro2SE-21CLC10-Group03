const express = require('express')
const mongoose = require('mongoose')
const bodyParser = require('body-parser');
const path = require('path');
const app = express();

mongoose.connect('mongodb://0.0.0.0:27017/HappiNovel', {
    useNewUrlParser: true,
});

app.use(express.static(path.join(__dirname, '../ui')))
app.use(express.json())
app.use(bodyParser.urlencoded({extended: true}))
app.set('view engin', 'ejs');

const db = mongoose.connection;
db.on("error", console.error.bind(console, "connection error: "));
db.once("open", function () {
    console.log("Connected successfully");
});

const accountSchema = new mongoose.Schema ({
    userID: Number,
    username: String,
    profileName: String,
    password: String,
    bio: String,
    jobs: String,
    favorites: String,
    dob: Date,
    avatarURL: String,
    coverURL: String,
    status: Number,
    regdate: Date,
    permission: Number,
    sdt: String,
});
const Account = mongoose.model("accounts", accountSchema);

app.get("/login", function(req, res){
    res.sendFile(path.join(__dirname, '../ui/loginPage.html'));
});

app.post("/login", function(req, res){
    console.log(req.body)
    username = req.body.username
    password = req.body.password

    Account.findOne({username: username}).then(function(data){
        if (data == null) return;
        if (data.username == username && data.password == password) {
            res.redirect("/")
        }
        else {
            res.redirect("/login")
        }
    })

});

app.get("/", function(req, res){
    
    res.sendFile(path.join(__dirname, '../ui/HomePage.html'));
});

const port = 3000
app.listen(port, function(){
    console.log(`Server started on port ${port}`);
});