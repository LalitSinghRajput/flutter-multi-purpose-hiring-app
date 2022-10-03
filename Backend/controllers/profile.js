const Profiles = require('../models/profile.js');

const newprofile = async (req, res) => {
    try {
        // check if email is already in the database
        const emailExist = await Profiles.findOne({ email: req.body.email });

        if (emailExist) {
            return res.status(400).send("Email already exists");
        }

        let profile = new Profiles(req.body);
        profile = await profile.save();

        res.status(200).json({
            message: "Profile added successfully."
        });
    } catch (error) {
        res.status(400).json(error);
    }
};

module.exports = { newprofile };