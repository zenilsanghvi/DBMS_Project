// require('dotenv').config();
const express = require("express"); // Include ExpressJS
const app = express(); // Create an ExpressJS app
const mysql = require("mysql");
const path = require("path");
const bodyParser = require("body-parser"); // Middleware

app.use(bodyParser.urlencoded({ extended: true }));
const res = require("express/lib/response");
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Zenil@9898",
  database: "samdb",
});

con.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

// Route to Homepage
app.get("/", (req, res) => {
  res.render("login");
});

// Route to Login Page
app.get("/login", (req, res) => {
  res.render("login");
});

app.get("/add_cartitem", function (req, res) {
  res.render("add_cartitem");
});

app.post("/add_cartitem", function (req, res) {
  let sql = "call add_cartitem(?,?,?)";
  con.query(
    sql,
    [req.body.UserID, req.body.ProductID, req.body.Quantity],
    function (err, result) {
      if(err) throw err;
    }
  );
  sql="select * from cart_item";
  con.query(sql,(err,result)=>{
    if (err) res.send(err);
      console.log(result);
      res.render("cart",{table:result});
  })
});


// app.post('/submit', (req, res) => {
//   // nsert Login Code Here
//   let username = req.body.username;
//   let password = req.body.password;
//   console.log(req.body);
//   console.log(password);
//   res.json(`Username: ${username} Password: ${password}`);
// });

app.get("/brandfilter", function (req, res) {
  res.render("brand_filter");
});

app.post("/brandfiltertable", function (req, res) {
  let sql = "call brand_filter(?)";
  con.query(sql, req.body.BrandName, function (err, result) {
    if (err) res.send(err);
    res.render("brand_filter_table", { table: result });
  });
});

const port = 3000; // Port we will listen on

// Function to listen on the port
app.listen(port, () => console.log(`This app is listening on port ${port}`));
