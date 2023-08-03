const {Router} = require('express')
const uploadController = require('../controllers/uploadControllers')
const { requireAuth} = require('../middleware/authMiddleware')

const router = Router()

router.get("/upload", requireAuth, uploadController.upload_get);
router.post("/upload", requireAuth, uploadController.upload_post);

module.exports = router;