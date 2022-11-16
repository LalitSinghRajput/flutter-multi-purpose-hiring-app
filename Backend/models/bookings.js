const mongoose = require('mongoose');

let Schema = mongoose.Schema;

let bookingSchema = new Schema({
    customerid: {
        type: String,
        default: ""
    },
    profileid: {
        type: String,
        default: ""
    },
    date: {
        type: String,
        default: ""
    },
    time: {
        type: String,
        default: ""
    },
    booking_accepted: {
        type: Boolean,
        default: false
    },
    booking_rejected: {
        type: Boolean,
        default: false
    },

},
    { timestamps: true }
);

let Bookings = mongoose.model('bookings', bookingSchema);

module.exports = Bookings;