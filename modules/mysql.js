const mysql = require('mysql');
const data = require('../data/config.json');
const connection = mysql.createConnection({

  host: data.dbhost,
  database: data.dbname,
  user: data.dbuser,
  password: data.dbpasswd,
  port: data.dbport

});

connection.connect((err) => {
  if (err) throw err;
  console.log("Csatlakozás rendben!");
});

const filmek = (callback) => {
  const mySelect =
    "SELECT cim, Nev, hossz FROM film, szemely WHERE sz_kod = rendezo;";
  connection.query(mySelect, (err, result) => {
    if (err) callback(err, null);
    callback(null, JSON.parse(JSON.stringify(result)));
  });
};

const csakszinesz = (callback) => {
  const mySelect =
    "SELECT Nev FROM szemely WHERE sz_kod NOT IN (SELECT rendezo FROM film);";
  connection.query(mySelect, (err, result) => {
    if (err) callback(err, null);
    callback(null, JSON.parse(JSON.stringify(result)));
  });
};

module.exports = { filmek, csakszinesz };



