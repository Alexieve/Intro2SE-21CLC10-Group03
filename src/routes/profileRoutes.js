const {Router} = require('express')
const profileController = require('../controllers/profileController');


const router = Router()

router.get('/profile/:id', profileController.profilePage);
router.get('/profile', profileController.profilePage);


module.exports = router;