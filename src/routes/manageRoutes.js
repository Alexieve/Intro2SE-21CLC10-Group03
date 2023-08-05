const {Router} = require('express')
const manageControllers = require('../controllers/manageControllers')
const { requirePermission } = require('../middleware/authMiddleware')

const router = Router()
const Book = require('../models/Book');

router.get('/manage', requirePermission(1), manageControllers.getBooks);
router.post('/process-checkboxes', async (req, res) => {
    const selectedBookIDs = req.body.selectedBookIDs;

  try {
    for (const bookData of selectedBookIDs) {
      const bookID = bookData.bookID;
      const isPending = bookData.isPending;

      // Tìm sách theo bookID trong cơ sở dữ liệu
      const book = await Book.findOne({ bookID: bookID });

      // Nếu tìm thấy sách và isPending khác 0, thực hiện cập nhật
      if (book && isPending !== "0") {
        book.isPending = "0"; // Đặt isPending = 0
        await book.save(); // Lưu lại vào cơ sở dữ liệu
      }
    }

    // Phản hồi cho client khi hoàn thành
    res.send('Data received and processed successfully!');
  } catch (err) {
    // Xử lý lỗi nếu có
    console.log(err);
    res.status(500).send('An error occurred while processing data.');
  }
});
router.post('/delete-books', async (req, res) => {
    const selectedBookIDs = req.body.selectedBookIDs;
  
    try {
      for (const bookData of selectedBookIDs) {
        // Tìm và xóa sách có bookID tương ứng
        const bookID = bookData.bookID;
        const book = await Book.findOne({ bookID: bookID });

      // Nếu tìm thấy sách và isPending khác 0, thực hiện cập nhật
        if (book ) {
        book.status = "3"; // Đặt isPending = 0
        await book.save(); // Lưu lại vào cơ sở dữ liệu
      }
      }
  
      // Phản hồi cho client khi hoàn thành
      res.send('Books deleted successfully!');
    } catch (err) {
      // Xử lý lỗi nếu có
      console.log(err);
      res.status(500).send('An error occurred while deleting books.');
    }
  });
module.exports = router;