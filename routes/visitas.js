const express = require("express");
const queries = require("../controllers/visitas");

const router = express.Router();

router.get("/", (req, res) => {
  queries.getVisitas((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las visitas" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
