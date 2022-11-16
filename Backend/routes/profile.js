const express = require('express');
const { newprofile, profileByCategory, profileById, getAllProfiles, profileUpdate, } = require('../controllers/profile.js');

const router = express.Router();

//* New worker -->> http://localhost:8000/profile/newprofile
router.post('/newprofile', newprofile);

//* get profile by id  -->> http://localhost:8000/profile/profileById/${id}
router.get('/profileById/:id', profileById);

//* get all profiles by category -->> http://localhost:8000/profile/profileByCategory/${category}
router.get('/profileByCategory/:category', profileByCategory);

//* get all profiles -->> http://localhost:8000/profile/getAllProfiles
router.get('/getAllProfiles', getAllProfiles);

//* update profile by id -->> http://localhost:8000/profile/profileUpdate/${id}
router.put('/profileUpdate/:id', profileUpdate);


module.exports = router;