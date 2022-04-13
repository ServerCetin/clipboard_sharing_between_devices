const express = require('express');
let bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

let clipboard = 'First Value!';

app.get('/', async (req, res) => {
    res.send(clipboard)
});

app.post('/', async (req, res) => {
    clipboard = req.body.clipboard.toString();
    res.send(clipboard)
});

module.exports = app;
