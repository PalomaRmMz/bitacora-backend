const express = require("express");
const queries = require("../controllers/visitasFilter");

const router = express.Router();

router.get("/", (req, res) => {
  const filters = {
    fecha_visita: req.query.fecha_visita || null,
    nombre_visitante: req.query.nombre_visitante || null,
    ap_visitante: req.query.ap_visitante || null,
    am_visitante: req.query.am_visitante || null,
    colonia: req.query.colonia || null,
    municipio: req.query.municipio || null,
    estado: req.query.estado || null,
    seccion: req.query.seccion || null,
    usuario_recep: req.query.usuario_recep || null,
    nombre_recep: req.query.nombre_recep || null,
    ap_recep: req.query.ap_recep || null,
    am_recep: req.query.am_recep || null,
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
