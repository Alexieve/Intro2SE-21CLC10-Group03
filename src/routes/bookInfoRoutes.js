const express = require('express');
const router = express.Router();
const bookInfoControllers = require('../controllers/bookInfoControllers');

// Define a route to handle book information
router.get('/:id', bookInfoControllers.renderBookInfoPage);
router.get('/:id/:chapID', bookInfoControllers.renderReadingPage);

module.exports = router;
