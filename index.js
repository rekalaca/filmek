const express = require('express');
const path = require('path');
const Fs = require('fs');
const app = express();
const { filmek, csakszinesz } = require("./modules/mysql");
const port = 4444;

app.set("view engine", "ejs");
app.use(express.static("public"));

app.get("/", (req, res) => {
    filmek((err, filmek) => {
        if (err) throw err;
        res.render("filmek", { filmek });
    });
});

app.get('/csakszinesz', (req, res) => {
    csakszinesz((err, csakszinesz) => {
        if (err) throw err;
        res.render("csakszinesz", { csakszinesz });
    });
});

app.get('/filmek', (req, res) => {
    filmek((err, filmek) => {
        if (err) throw err;
        res.render("filmek", { filmek });
    });
});

app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, "public/404.html"))
});


app.listen(port);