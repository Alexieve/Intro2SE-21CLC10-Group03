const {Router} = require('express')
const manageBookController = require('../controllers/manageBookController')
const { requirePermission } = require('../middleware/authMiddleware')

const router = Router()

router.get('/manage/:id', requirePermission(1), manageBookController.viewBook);
router.get('/manage/:bookID/:chapID', requirePermission(1), manageBookController.viewChapter);
router.put('/manage/approveBook', requirePermission(1), manageBookController.approveBook);
router.delete('/manage/rejectBook', requirePermission(1), manageBookController.rejectBook);
router.put('/manage/approveChap', requirePermission(1), manageBookController.approveChap);
router.delete('/manage/rejectChap', requirePermission(1), manageBookController.rejectChap);

module.exports = router;