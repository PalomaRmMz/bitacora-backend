const express = require("express");
const queries = require("../queries/visitasFilter");

const router = express.Router();

router.get("/", (req, res) => {
  const filters = {
    fecha_visita: req.query.fecha_visita || null,
    colonia: req.query.colonia || null,
    municipio: req.query.municipio || null,
    estado: req.query.estado || null,
    seccion: req.query.seccion || null,
  };

  queries.getVisitasFilter(filters, (err, results) => {
    if (err) {
      res.status(500).json({ error: "Error al obtener las visitas" });
    } else {
      res.json(results);
    }
  });
});

module.exports = router;
