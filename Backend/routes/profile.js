const express = require('express');
const { newprofile, profileByCategory, profileById } = require('../controllers/profile.js');

const router = express.Router();

//* New worker -->> http://localhost:8000/profile/newprofile
router.post('/newprofile', newprofile);

//* get profile by id  -->> http://localhost:8000/profile/profileById/${id}
router.get('/profileById/:id', profileById);

//* get all profiles by category -->> http://localhost:8000/profile/profileByCategory/${category}
router.get('/profileByCategory/:category', profileByCategory);

module.exports = router;