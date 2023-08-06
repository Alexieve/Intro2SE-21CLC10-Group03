const express = require('express');
const router = express.Router();
const { requireAuth } = require('../middleware/authMiddleware');
const readingHistoryController = require('../controllers/readingHistoryController');

// Route to display the reading history
router.get('/', requireAuth, async (req, res) => {
  try {
    const readingHistory = await readingHistoryController.getReadingHistory(req, res);
    res.render('home', { readingHistory }); // Pass the readingHistory data to the EJS template
  } catch (err) {
    console.error('Error rendering reading history page:', err);
    res.status(500).send('Internal Server Error');
  }
});

module.exports = router;
