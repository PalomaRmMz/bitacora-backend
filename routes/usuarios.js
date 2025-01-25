const express = require("express");
const queries = require("../queries/usuarios");

const router = express.Router();

router.get("/", (req, res) => {
  queries.getUsuarios((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener los usuarios" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
