const express = require('express');
const { newprofile } = require('../controllers/profile.js');

const router = express.Router();

//* New worker -->> http://localhost:8000/profile/newprofile
router.post('/newprofile', newprofile);

module.exports = router;