const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  user: "user_adm",
  password: "qwerty",
  database: "bitacora",
});

db.connect((err) => {
  if (err) {
    console.error("Error al conectar a MySQL: ", err);
  } else {
    console.log("Conectado a la base de datos MySQL");
  }
});

app.get("/api/bitacora", (req, res) => {
  db.query("SELECT * FROM bitacora ORDER BY fecha DESC", (err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener la bitácora" });
    } else {
      res.json(results);
    }
  });
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
