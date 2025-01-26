const express = require("express");
const queries = require("../controllers/visitantesFilter");

const router = express.Router();

router.get("/", (req, res) => {
  const filters = {
    nombre_visitante: req.query.nombre_visitante || null,
    ap_visitante: req.query.ap_visitante || null,
    am_visitante: req.query.am_visitante || null,
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
