const express = require("express");
const queries = require("../queries/visitantes");

const router = express.Router();

// Endpoint para obtener usuarios
router.get("/", (req, res) => {
  queries.getVisitantes((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las visitantes" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
