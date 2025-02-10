const express = require("express");
const { checkIdVisitanteExists } = require("../controllers/checkIDVisitante");

const router = express.Router();

router.get("/id/:id", (req, res) => {
  const { id } = req.params;

  checkIdVisitanteExists(id, (err, exists) => {
    if (err) {
      res.status(500).json({ error: "Error al verificar el id_visitante" });
    } else {
      res.json({ exists });
    }
  });
});

module.exports = router;
