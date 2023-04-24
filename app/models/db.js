const mysql = require("mysql");
const dbConfig = require("../config/db.config");

const connection = mysql.createConnection({
    host:'localhost',
    database:'bt3',
    user:'root',
    password:'123456789'
});

connection.connect(error => {
    if (error) throw error;
    console.log("Successfully connected to the database");
})

module.exports = connection;
