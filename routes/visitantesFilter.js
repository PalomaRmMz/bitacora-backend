const express = require("express");
const queries = require("../queries/visitantesFilter");

const router = express.Router();

router.get("/", (req, res) => {
  const filters = {
    colonia: req.query.colonia || null,
    municipio: req.query.municipio || null,
    estado: req.query.estado || null,
    seccion: req.query.seccion || null,
  };

  queries.getVisitantesFilter(filters, (err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener los visitantes" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
