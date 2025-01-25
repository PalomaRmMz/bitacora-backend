const express = require("express");
const queries = require("../queries/catalogos");

const router = express.Router();

router.get("/colonias", (req, res) => {
  queries.getColonias((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las colonias" });
    } else {
      res.json(results);
    }
  });
});

router.get("/municipios", (req, res) => {
  queries.getMunicipios((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener los municipios" });
    } else {
      res.json(results);
    }
  });
});

router.get("/estados", (req, res) => {
  queries.getEstados((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener los estados" });
    } else {
      res.json(results);
    }
  });
});

router.get("/codigos-postales", (req, res) => {
  queries.getCP((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener los códigos postales" });
    } else {
      res.json(results);
    }
  });
});

router.get("/secciones", (req, res) => {
  queries.getSecciones((err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las secciones" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
