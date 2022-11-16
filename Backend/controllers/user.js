const Users = require('../models/user.js')

// login 
const loginUser = async (req, res) => {
    const user = await Users.findOne({ email: req.body.email });

    try {
        // if user doesn't exist with specified email
        if (!user)
            res.status(404).json('User not found');
        if (user.password === req.body.password) {
            res.status(200).json(user);
        }
        res.status(404).json({ message: "Login Failed" });
    } catch (error) {
        res.status(504).json(error);
    }
}

// fetch user by id
const userById = async (req, res) => {
    try {
        const userById = await Users.findById(req.params.id);

        if (userById.length == 0) {
            return res.status(404).json({ status: 404, message: 'User not found' });
        }
        res.status(200).json(userById);
    } catch (error) {
        return res.status(400).json(err);
    }
}

const getAllUsers = async (req, res) => {
    try {
        const allUsers = await Users.find();

        if (allUsers.length == 0) {
            return res.status(404).json({
                status: 404,
                message: "Database is empty"
            })
        }

        res.status(200).json(allUsers);

    } catch (err) {
        return res.status(400).json(err);
    }
}

module.exports = { loginUser, userById, getAllUsers };