const { BlobServiceClient } = require('@azure/storage-blob');
const Account = require("../models/Account");
const jwt = require("jsonwebtoken");
const path = require("path");
const Book = require("../models/Book");
const Volume = require("../models/Volume");
const Genre = require("../models/Genre");
const bookgenres = require("../models/BookGenre");
const bcrypt = require("bcrypt");
const fs = require("fs");
const { bookContainer } = require("../middleware/database");
const Chapter = require("../models/Chapter");
const ReadingHistory = require("../models/ReadingHistory");
const Notify = require("../models/Notify");
const notifyofusers = require("../models/NotifyOfUser");
const { notifyContainer } = require("../middleware/database");
const mongoose = require("mongoose"); 

exports.notification = async (req, res) => {

 
    try {
    const token = req.cookies.jwt;
    if (!token) {
      throw new Error("No JWT token found");
    }
    const decodedToken = jwt.verify(token, "information of user");
    const user = await Account.findById(decodedToken.id);
    // Loop through the bookmarks and find the unique book IDs
   console.log(user.userID);
    if (!user) {
      throw new Error("User not found");
    }
    
    const notifyIDs = await Notify.aggregate([
        {
          $match: { typeID: 1 },
        },
        {
          $lookup: {
            from: "notifyofusers", // Replace with the name of the notifyofusers collection
            localField: "notifyID",
            foreignField: "notifyID",
            as: "notifyofusers",
          },
        },
        {
          $unwind: "$notifyofusers",
        },
        {
          $match: { "notifyofusers.userID": user.userID }, // Change the userID value as needed
        },
        {
          $group: {
            _id: "$notifyID",
          },
        },
      ]);
  
      console.log(notifyIDs);
      const notifyData = [];
    // Iterate over each notifyID and read the corresponding Notify file
    for (const notify of notifyIDs) {
        const notifyID = notify._id;
        const { chapID, volID, bookID } = await readNotifyFile(notifyID);
      
        // Fetch chapName from the Chapter collection
        const chapterData = await Chapter.findOne({ bookID, volID, chapID });
        const chapName = chapterData ? chapterData.chapName : 'Chap Name Not Found';
      
        // Fetch volName from the Volume collection
        const volumeData = await Volume.findOne({ bookID, volID });
        const volName = volumeData ? volumeData.volName : 'Vol Name Not Found';
      
        // Fetch bookName from the Book collection
        const bookData = await Book.findOne({ bookID });
        const bookName = bookData ? bookData.title : 'Book Name Not Found';
        const bookIMG = bookData ? bookData.coverImg : 'Book Name Not Found';

        const genreIDs = await bookgenres.findOne({bookID})
        const genreID = genreIDs ? genreIDs.genreID : 'Not found genre';

        const genre = await Genre.findOne({genreID})
        const genreName = genre ? genre.genreName : 'Not found genre';
      
        console.log(`NotifyID: ${notifyID}, chapID: ${chapID}, volID: ${volID}, bookID: ${bookID}`);
        console.log(`Chap Name: ${chapName}, Vol Name: ${volName}, Book Name: ${bookName}`);
        notifyData.push({
            notifyID,
            chapID,
            volID,
            bookID,
            chapName,
            volName,
            bookName,
            bookIMG,
            genreName
          });
        
      }
      
    res.render("notification", {notifyData});
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }
};

async function readNotifyFile(notifyID) {
    const blobName = `Noti${notifyID}.txt`;
  
    try {
      const blobClient = notifyContainer.getBlobClient(blobName); // Use the notifyContainer
      const response = await blobClient.download();
      const data = await streamToString(response.readableStreamBody);
      const lines = data.trim().split('\n');
  
      if (lines.length !== 3) {
        console.error(`Invalid file format for Noti${notifyID}.txt`);
        return null;
      }
      const bookID = parseInt(lines[0], 10);
      const chapID = parseInt(lines[2], 10);
      const volID = parseInt(lines[1], 10);
      console.log(chapID);
      return { chapID, volID, bookID };
    } catch (error) {
      console.error(`Error reading Notify${notifyID}.txt:`, error);
      return null;
    }
  }
  
  async function streamToString(readableStream) {
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