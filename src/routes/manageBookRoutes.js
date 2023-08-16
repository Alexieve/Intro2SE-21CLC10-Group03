const {Router} = require('express')
const manageBookController = require('../controllers/manageBookController')
const { requirePermission } = require('../middleware/authMiddleware')

const router = Router()

router.get('/manage/:id', requirePermission(1), manageBookController.viewBook);
router.get('/manage/:bookID/:chapID', requirePermission(1), manageBookController.viewChapter);
router.post('/manage/approveBook', requirePermission(1), manageBookController.approveBook);
router.post('/manage/rejectBook', requirePermission(1), manageBookController.rejectBook);
router.post('/manage/approveChap', requirePermission(1), manageBookController.approveChap);
router.post('/manage/rejectChap', requirePermission(1), manageBookController.rejectChap);

module.exports = router;