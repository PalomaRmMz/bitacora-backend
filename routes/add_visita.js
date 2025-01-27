const express = require("express");
const visitasInsert = require("../controllers/add_visita");

const router = express.Router();

router.post("/", (req, res) => {
  const visitanteData = req.body.visitante;
  const visitaData = req.body.visita;

  visitasInsert.insertVisita(visitanteData, visitaData, (err, results) => {
    if (err) {
      res
        .status(500)
        .json({ error: "Error al insertar la visita", message: err.message });
    } else {
      res
        .status(200)
        .json({ message: "Visita registrada correctamente", results });
    }
  });
});

module.exports = router;
