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

//get all profiles
const getAllProfiles = async (req, res) => {
    try {
        const getAllProfiles = await Profiles.find();
        console.log(",");

        if (getAllProfiles.length == 0) {
            return res.status(404).json({
                status: 404,
                message: "Database is empty"
            })
        }

        res.status(200).json(getAllProfiles);

    } catch (err) {
        return res.status(400).json(err);
    }
}

//update profile information by id
const profileUpdate = async (req, res) => {
    try {

        let profile = await Profiles.findByIdAndUpdate(req.params.id, {
            $set: req.body,
        });
        if (profile == null) {
            return res.status(404).json({
                status: 404,
                message: "Profile does not exist"
            })
        }
        let updatedProfile = await Profiles.findById(req.params.id);
        res.status(200).json({
            updatedProfile
            // message: "Profile information updated successfully"
        })

    } catch (error) {
        return res.status(500).json(error);
    }
};

module.exports = { newprofile, profileByCategory, profileById, getAllProfiles, profileUpdate };