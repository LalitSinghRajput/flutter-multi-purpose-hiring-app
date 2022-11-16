const express = require('express');
const { getAllBookings, updateBooking, newbooking } = require('../controllers/bookings.js');

const router = express.Router();

//* get all bookings -->> http://localhost:8000/bookings/getAllBookings
router.get('/getAllBookings', getAllBookings);

//* update bookings -->> http://localhost:8000/bookings/updateBooking/${id}
router.put('/updateBooking/:id', updateBooking);

//* new booking -->> http://localhost:8000/bookings/newbooking
router.put('/newbooking', newbooking);

module.exports = router;