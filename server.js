require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");
const path = require("path");

const app = express();
app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "exam_lookup",
});

db.connect((err) => {
  if (err) {
    console.error("Database connection failed: " + err.message);
  } else {
    console.log("Connected to MySQL database (XAMPP)");
  }
});

app.post("/exam-center", (req, res) => {
  const rollNumber = parseInt(req.body.rollNumber);

  const query = `
    SELECT Building, Room, Building_Image, location
    FROM ug_admission_test_2022_23_seat_plan
    WHERE ? BETWEEN From_Number AND To_Number
  `;

  db.query(query, [rollNumber], (err, results) => {
    if (err) {
      console.error("Database query error:", err);
      return res.status(500).send("Database query error");
    }

    if (results.length > 0) {
      const data = results[0];

      const imageHTML = data.Building_Image 
        ? `<img src="/images/${data.Building_Image}" alt="Building Image" class="building-image">` 
        : '';

      const locationButtonHTML = data.location
        ? `<a href="${data.location}" target="_blank" class="map-button">Show Location on Map</a>`
        : '';

      res.send(`
        <html>
        <head>
          <style>
            body {
              font-family: 'Poppins', sans-serif;
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
              height: 100vh;
              margin: 0;
              text-align: center;
              background-color: #f4f4f4;
            }
            .container {
              max-width: 80%;
              padding: 20px;
              background: white;
              border-radius: 10px;
              box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            }
            .building-image {
              width: 100%;
              max-width: 800px;
              height: auto;
              border-radius: 10px;
              margin-top: 20px;
            }
            h2 {
              margin-bottom: 10px;
            }
            p {
              font-size: 18px;
            }
            a {
              display: inline-block;
              margin-top: 15px;
              text-decoration: none;
              color: white;
              background: #007BFF;
              padding: 10px 20px;
              border-radius: 5px;
            }
            a:hover {
              background: #0056b3;
            }
            .map-button {
              background: #28a745;
            }
            .map-button:hover {
              background: #1e7e34;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <h2>Exam Center Details</h2>
            <p><strong>Building:</strong> ${data.Building}</p>
            <p><strong>Room:</strong> ${data.Room}</p>
            ${imageHTML}
            <br>
            ${locationButtonHTML}
            <br>
            <a href="/">Go Back</a>
          </div>
        </body>
        </html>
      `);
    } else {
      res.send(`
        <html>
        <head>
          <style>
            body {
              font-family: 'Poppins', sans-serif;
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
              height: 100vh;
              margin: 0;
              text-align: center;
              background-color: #f4f4f4;
            }
            .container {
              max-width: 80%;
              padding: 20px;
              background: white;
              border-radius: 10px;
              box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            }
            a {
              display: inline-block;
              margin-top: 15px;
              text-decoration: none;
              color: white;
              background: #dc3545;
              padding: 10px 20px;
              border-radius: 5px;
            }
            a:hover {
              background: #a71d2a;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <h2>Roll number not found</h2>
            <a href="/">Go Back</a>
          </div>
        </body>
        </html>
      `);
    }
  });
});

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "index.html"));
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`Click here to open: http://localhost:${PORT}`);
});
