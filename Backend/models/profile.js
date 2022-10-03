const mongoose = require('mongoose');

let Schema = mongoose.Schema;

let profileSchema = new Schema({
    name: {
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
    category: {
        type: String,
        default: "",
    },
    work: {
        type: String,
        default: "",
    },
    experience: {
        type: Number,
        default: 0
    },

},
    { timestamps: true }
);

let Profiles = mongoose.model('profiles', profileSchema);

module.exports = Profiles;