const mongoose = require('mongoose');

let Schema = mongoose.Schema;

let userSchema = new Schema({
    name: {
        type: String,
        default: ""
    },
    imgsrc: {
        type: String,
        default: ""
    },
    mobno: {
        type: Number,
    },
    email: {
        type: String,
        default: "",
    },
    address: {
        type: String,
        default: "",
    },
    password: {
        type: String,
        default: "",
    },
},
    { timestamps: true }
);

let Users = mongoose.model('users', userSchema);

module.exports = Users;