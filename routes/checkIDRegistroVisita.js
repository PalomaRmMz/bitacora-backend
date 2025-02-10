const express = require("express");
const {
  checkIdRegistroVisitaExists,
} = require("../controllers/checkIDRegistroVisita");

const router = express.Router();

router.get("/id/:id", (req, res) => {
  const { id } = req.params;

  checkIdRegistroVisitaExists(id, (err, exists) => {
    if (err) {
      res.status(500).json({ error: "Error al verificar el ID" });
    } else {
      res.json({ exists });
    }
  });
});

module.exports = router;
