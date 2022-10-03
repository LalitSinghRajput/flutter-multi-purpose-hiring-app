const express = require("express");
const mongoose = require("mongoose");
const dotenv = require("dotenv");
const profile = require("./routes/profile.js");

const app = express();
app.use(express.json());
const PORT = process.env.PORT || 8000;
dotenv.config();

let options = {
    keepAlive: true,
    connectTimeoutMS: 30000,
    useNewUrlParser: true,
    useUnifiedTopology: true,
    autoIndex: false
};

const database_url = process.env.DATABASE_URL;

mongoose.connect(database_url, options, () => {
    console.log('Connected to MongoDB successfully');
}, (err) => {
    if (err) console.log(err);
});

app.use('/profile', profile);


app.listen(PORT, () => {
    console.log(`Backend Server running at: http://localhost:${PORT}`)
});