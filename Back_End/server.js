require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");
const bodyParser = require("body-parser");

const app = express();
app.use(cors());
app.use(express.urlencoded({ extended: true })); // Parse form data
app.use(express.json());

// MySQL Database Connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "", // XAMPP default password is empty
  database: "exam_lookup",
});

db.connect((err) => {
  if (err) {
    console.error("Database connection failed: " + err.message);
  } else {
    console.log("Connected to MySQL database (XAMPP)");
  }
});

// Handle form submission via POST request
app.post("/exam-center", (req, res) => {
  const rollNumber = req.body.rollNumber;
  const query = "SELECT building, floor, room FROM exam_centers WHERE roll_number = ?";

  db.query(query, [rollNumber], (err, results) => {
    if (err) {
      return res.status(500).send("Database query error");
    }
    if (results.length > 0) {
      const data = results[0];
      res.send(`
        <h2>Exam Center Details</h2>
        <p><strong>Building:</strong> ${data.building}</p>
        <p><strong>Floor:</strong> ${data.floor}</p>
        <p><strong>Room:</strong> ${data.room}</p>
        <a href="/">Go Back</a>
      `);
    } else {
      res.send("<h2>Roll number not found</h2><a href='/'>Go Back</a>");
    }
  });
});

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
