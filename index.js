const express = require("express");
const app = express();
const mysql = require("mysql");
const cors = require('cors');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    user:"root",
    host:"localhost",
    password:"password",
    database:"LabworkReact",
    });

    
    app.get("/farms", (req, res) => {
        db.query("SELECT * FROM farmfileds", (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.send(result);
            console.log(result);
          }
        });
      });


      app.get("/farmveg", (req, res) => {
        db.query("SELECT * FROM vegetables", (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.send(result);
            console.log(result);
          }
        });
      });



      app.get("/farmprice", (req, res) => {
        db.query("SELECT * FROM vegprice", (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.send(result);
            console.log(result);
          }
        });
      });
      app.listen(3003, ()=>{
        console.log("YESSSS IM RUNNING OVER 3003");
        });