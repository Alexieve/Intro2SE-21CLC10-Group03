

const express = require('express');
const profileController = require('../controllers/profileController');
const router = express.Router();

router.get('/:id', profileController.profilePage);
router.get('/profile', profileController.profilePage);

module.exports = router;
