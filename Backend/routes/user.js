const express = require('express');
const { loginUser, userById, getAllUsers } = require('../controllers/user.js');

const router = express.Router();

//* login user -->> http://localhost:8000/user/loginUser
router.post('/loginUser', loginUser);

//* find user by id -->> http://localhost:8000/user/userById/${id}
router.get('/userById/:id', userById);

//* get all users -->> http://localhost:8000/user/getAllUsers
router.get('/getAllUsers', getAllUsers);

module.exports = router;