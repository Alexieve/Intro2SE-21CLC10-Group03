// Require Module
const cookieParser = require('cookie-parser')
const express = require('express')
const mongoose = require('mongoose')
const bodyParser = require('body-parser')
const path = require('path')
const app = express()   
// const { BlobServiceClient, StorageSharedKeyCredential } = require('@azure/storage-blob');

// Require Routes
const authRoutes = require('./routes/authRoutes')
const profileRoutes = require('./routes/profileRoutes');
const bookMarkRoutes = require('./routes/bookMarkRoutes');
const uploadRoutes = require('./routes/uploadRoutes');
const bookInfoRoutes = require('./routes/bookInfoRoutes'); // Add the bookInfoRoutes
const { requireAuth, checkUser} = require('./middleware/authMiddleware')

// Database connection
mongoose.connect('mongodb+srv://admin:123@happinovel.4zvtpnj.mongodb.net/HappiNovel?retryWrites=true&w=majority', {
    useNewUrlParser: true,
});
const db = mongoose.connection;
db.on("error", console.error.bind(console, "Connection error: "));
db.once("open", function () {
    console.log("Connected successfully to MongoDB");
});

// Serve images from the Image folder
app.use('/images', express.static(path.join(__dirname, 'database/ProfileCover')));
app.use('/imagesAvatar', express.static(path.join(__dirname, 'database/Avatar')));
app.use('/imagesBook', express.static(path.join(__dirname, 'database/Book/Bookcover')));

// Use and Set Module
app.use(express.static(path.join(__dirname, './public')))
app.set('views', path.join(__dirname, './views'))
app.set('view engine', 'ejs');
app.use(express.json())
app.use(cookieParser())
app.use(bodyParser.urlencoded({extended: true}))



// Routes
app.get('*', checkUser);
app.use(authRoutes)
app.use(profileRoutes)
app.use(bookMarkRoutes)
app.use(uploadRoutes)
app.get("/", (req, res) => res.render('home'));
app.get("/profile", requireAuth, (req, res) => res.render('profile'));
app.get("/bookmark", requireAuth, (req, res) => res.render('bookmark'));
app.use('/book_info', bookInfoRoutes); // Add the bookInfoRoutes


// Listen
const port = 3000
app.listen(port, function(){
    console.log(`Server started on port ${port}`);
});
