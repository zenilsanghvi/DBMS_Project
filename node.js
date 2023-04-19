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
    console.log(result);
      // res.render("cancel_table",{table:result});
  })
  });
});


app.get("/chng_qty",function(req,res){
  res.render("chng_qty");
});

app.post("/chng_qty",function(req,res){
  let sql="call chng_qty(?,?,?)";
  con.query(sql,[req.body.uid,req.body.pid,req.body.rqty],function(err,result){
    if(err) throw (err); 
  });
  sql="select * from cart_item";
  con.query(sql,(err,result)=>{
    if (err) res.send(err);
    console.log(result);
    res.render("chng_qty_table",{table:result});
  })
}); 


app.get("/price_filter",function(req,res){
  res.render("price_filter");
});

app.post("/price_filter_table",function(req,res){
  let sql = `select p_name,p_desc,p_price from product where ${req.body.lp}<=p_price and p_price<=${req.body.hp}`;
  con.query(sql, function (err, result) {
    if (err) res.send(err);
    // console.log(result);
    res.render("price_filter_table",{table:result});
  })
});


app.get("/product_stock",(req,res)=>{
  res.render("product_stock");
})

app.post("/product_stock",(req,res)=>{
  let sql="select product_stock(?)";
  con.query(sql,req.body.pname,(err,result)=>{
    if (err) throw err;
    res.send(result);
    // console.r(result);
  })
})


app.get("/total_cost",(req,res)=>{
  res.render("total_cost");
})

app.post("/total_cost",(req,res)=>{
  let sql="select total_cost(?)";
  con.query(sql,req.body.cid,(err,result)=>{
    if (err) throw err;
    res.send(result);
  })
})


app.get("/update_seller_details",function(req,res){
  res.render("update_seller_details");
})

app.post("/update_seller_details",function(req,res){
  let sql="call update_seller_details(?,?,?,?,?,?,?)";
  con.query(sql,[req.body.sid,req.body.sno,req.body.ad1,req.body.ad2,req.body.scity,req.body.spin,req.body.smo],function(err,result){
    if (err) throw err;
    con.query("select s_name,s_shopno,s_add1,s_add2,s_city,s_pincode,s_mobile_no from seller where s_id=?",req.body.sid,function(err,result){
      if (err) throw err;});
      
      sql="select * from seller";
      con.query(sql,(err,result)=>{
      if (err) res.send(err);
      console.log(result);
        res.render("update_seller_details_table",{table:result})
  })
});
});

// app.post("/add_cartitem", function (req, res) {
//   let sql = "call add_cartitem(?,?,?)";
//   con.query(sql,[req.body.UserID, req.body.ProductID, req.body.Quantity],
//     function (err, result) {
//       if(err) throw err;});
//   sql="select * from cart_item";
//   con.query(sql,(err,result)=>{
//     if (err) res.send(err);
//     console.log(result);
//       res.render("cart",{table:result});
//   })
// });


app.get("/bill_amount",function(req,res){
  res.render("bill_amount");
})


app.post("/bill_amount",function(req,res){
  let sql = "select bill_amount(?)";
  con.query(sql,parseInt(req.body.cid),function(err,result){
    if (err) throw err;
    res.send(result);
  })
})

//Wrogn	17	Central Mall	Pal	Surat	348322	3497564857
const port = 3000; // Port we will listen on

// Function to listen on the port
app.listen(port, () => console.log(`This app is listening on port ${port}`));
