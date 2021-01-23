const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const bodyParser = require('body-parser');
const mysql = require('mysql');

require('dotenv').config();

// urlencodedとjsonを初期化する
app.use(bodyParser.urlencoded({
  extended: true
}));
app.use(bodyParser.json());

// MySQLとのコネクションを生成する
const con = mysql.createConnection({
  host:     process.env.DB_HOST,
  port:     process.env.DB_PORT,
  user:     process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

// コネクション生成を確認する
con.connect(function(err) {
  if (err) throw err;
  console.log('Connected');
});

app.post('/api/fairies', (req, res) => {
  const fairy = req.body;
  const sql = 'INSERT INTO fairy (name, instrument, sweets) VALUES (?, ?, ?)';
  con.query(sql, [fairy.name, fairy.instrument, fairy.sweets], (err, results, fields) => {
    if (err) throw err;
    res.json({
      message: 'Insert Successded.'
    });
  });
});

app.get('/api/fairies', (req, res) => {
  con.query('SELECT * FROM fairy', (err, results) => {
    res.json(results);
  });
});

app.get('/', (req, res) => {
  res.json({
    message: 'Hello Sample Node.js app',
    localAddress: req.socket.localAddress,
  });
});

app.listen(port, () => console.log(`Sample app listening on port ${port}!`))