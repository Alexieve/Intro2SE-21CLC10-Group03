const {Router} = require('express');
const router = Router()

const bookInfoControllers = require('../controllers/bookInfoControllers');

// Define a route to handle book information
<<<<<<< HEAD
router.get('/:id', bookInfoControllers.renderBookInfoPage);
router.get('/:id/:chapID', bookInfoControllers.renderReadingPage);
=======
router.get('/:bookID/:chapID', bookInfoControllers.reading);
router.get('/:id', bookInfoControllers.bookInfo_get);
router.post('/:id/bookmark', bookInfoControllers.bookmark);
router.post('/:id/rating', bookInfoControllers.rating);
router.post('/:id/addComment', bookInfoControllers.addComment);
router.delete('/:id/deleteComment', bookInfoControllers.deleteComment);
router.post('/:id/reportComment', bookInfoControllers.reportComment);
router.post('/:id/banUser', bookInfoControllers.banUser);
>>>>>>> fcc6e07fac3727a8c1b627bc2af571319432f847

module.exports = router;
