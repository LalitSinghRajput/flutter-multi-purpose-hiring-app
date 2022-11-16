const Bookings = require('../models/bookings.js');

const getAllBookings = async (req, res) => {
    try {
        const allBookings = await Bookings.find();

        if (allBookings.length == 0) {
            return res.status(404).json({
                status: 404,
                message: "Database is empty"
            })
        }

        res.status(200).json(allBookings);

    } catch (err) {
        return res.status(400).json(err);
    }
}

// update booking information by id
const updateBooking = async (req, res) => {
    try {

        let booking = await Bookings.findByIdAndUpdate(req.params.id, {
            $set: req.body,
        });
        if (booking == null) {
            return res.status(404).json({
                status: 404,
                message: "Booking does not exist"
            })
        }
        let updatedBooking = await Bookings.findById(req.params.id);
        res.status(200).json({
            updatedBooking
        })

    } catch (error) {
        return res.status(500).json(error);
    }
}

// add new booking
const newbooking = async (req, res) => {
    try {
        let currbooking = new Bookings(req.body);
        currbooking = await currbooking.save();

        res.status(200).json({
            message: "Booking added successfully."
        });
    } catch (error) {
        res.status(400).json(error);
    }
};


module.exports = { getAllBookings, updateBooking, newbooking };