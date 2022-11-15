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

const profileById = async (req, res) => {
    try {
        const profileById = await Profiles.findById(req.params.id);

        if (profileById.length == 0) {
            return res.status(404).json({ status: 404, message: 'Profile not found' });
        }
        res.status(200).json(profileById);
    } catch (error) {
        return res.status(400).json(err);
    }
}

const profileByCategory = async (req, res) => {
    try {
        console.log(req.params.category);
        const profile_by_Category = await Profiles.find({ 'category': req.params.category });
        console.log(profile_by_Category);

        if (profile_by_Category.length == 0) {
            return res.status(404).json({
                status: 404,
                message: 'Profile not found'
            });
        }
        return res.status(200).json(profile_by_Category);
    } catch (error) {
        return res.status(400).json(err);
    }
}

module.exports = { newprofile, profileByCategory, profileById };