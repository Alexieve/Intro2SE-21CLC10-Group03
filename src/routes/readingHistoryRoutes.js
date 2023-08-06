const {Router} = require('express')
const readinghistoryController = require('../controllers/readingHistoryController');


const router = Router()

router.get('/readinghistory', readinghistoryController.readinghistory);

module.exports = router;