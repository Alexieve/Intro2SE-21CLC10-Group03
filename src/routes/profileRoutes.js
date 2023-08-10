const express = require('express');
const profileController = require('../controllers/profileController');
const router = express.Router();
const multer = require('multer');

const upload = multer();

router.get('/:id', profileController.profilePage);
router.post('/update-cover', upload.single('coverImage'), profileController.updateCoverImage);
router.post('/update-avatar', upload.single('avaImage'), profileController.updateAvaImage);


module.exports = router;
