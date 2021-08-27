const mysql = require("mysql");
const _env = require("./config/_env");

const mysqlConnection = mysql.createConnection({
  host: "localhost",
  user: "admin",
  password: "fayser17",
  database: "vu",
});



mysqlConnection.connect((e) => {
  if (e) {
    console.log(e);
    return;
  } else {
    console.log("DB is connected");
  }
});

module.exports = mysqlConnection;
