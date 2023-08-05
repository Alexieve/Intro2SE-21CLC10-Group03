// routes/bookInfoRoutes.js

const express = require('express');
const router = express.Router();
const bookInfoControllers = require('../controllers/bookInfoControllers');

router.get('/', bookInfoControllers.bookInfo_get);

module.exports = router;