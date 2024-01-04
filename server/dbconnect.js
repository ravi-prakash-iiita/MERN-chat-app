require("dotenv").config();
const mongoose = require("mongoose");

const MONGO_USERNAME=process.env.MONGO_USERNAME;
const MONGO_PASSWORD = process.env.MONGO_PASSWORD;
const MONGO_HOST = process.env.MONGO_HOST;
const MONGO_CHAT_DB=process.env.MONGO_CHAT_DB;

const dbconnect= async () => {
    console.log("mongodb+srv://" + MONGO_USERNAME + ":" + MONGO_PASSWORD + "@" + MONGO_HOST + "/" + MONGO_CHAT_DB + "?retryWrites=true&w=majority");
    try {
        mongoose.connect("mongodb+srv://" + MONGO_USERNAME + ":" + MONGO_PASSWORD + "@" + MONGO_HOST + "/" + MONGO_CHAT_DB + "?retryWrites=true&w=majority",
        {
            useNewUrlParser: true,
            useUnifiedTopology: true,
        })
            .then(()=>console.log("connected to db"))
            .catch(e=>console.log("err in db", e))

        const db = mongoose.connection;
        db.on("error", error =>
            console.log(error)
        );
        db.once("open", () =>
            console.log("connected to db")
        );
    } catch (err) {
        console.log(err);
        //process.exit(1)        
    }
};

exports.dbconnect = dbconnect