const express = require("express");
const queries = require("../queries/cat_colonias");

const router = express.Router();

router.get("/", (req, res) => {
  queries.getColonias((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las colonias" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
