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
  con.query(sql,[req.body.UserID, req.body.ProductID, req.body.Quantity],
    function (err, result) {
      if(err) throw err;});
  sql="select * from cart_item";
  con.query(sql,(err,result)=>{
    if (err) res.send(err);
    console.log(result);
      res.render("cart",{table:result});
  })
});

app.get("/brandfilter", function (req, res) {
  res.render("brand_filter");
});

app.post("/brandfiltertable", function (req, res) {
  let sql = `select s_name,p_name,p_qty from seller,product where "${req.body.BrandName}"=s_name and s_id=p_seller_id`;
  con.query(sql, function (err, result) {
    if (err) res.send(err);
    // console.log(result);
    res.render("brand_filter_table",{table:result});
  });

  // sql="select * from cart_item";
  // con.query(sql,(err,result)=>{
  //   if (err) res.send(err);
  //     // console.log(result);
  //     res.render("cart",{table:result});
  // })  
});


app.get("/cancel",function(req,res){
  res.render("cancel");
});

app.post("/cancel_table",function(req,res){
  let sql="call cancel(?)";
  con.query(sql,req.body.oid,function(err,result){
    if (err) throw err;
    con.query("select * from cancel where cl_order_id=?",(int)(req.body.oid),function(err,result){
      if (err) throw err;
      // res.render("cancel_table",{table:result});
    });
    sql="select * from cancel";
    con.query(sql,(err,result)=>{
    if (err) res.send(err);
    // console.log(result);
      res.render("cancel_table",{table:result});
  })
  });
});


const port = 3000; // Port we will listen on

// Function to listen on the port
app.listen(port, () => console.log(`This app is listening on port ${port}`));
