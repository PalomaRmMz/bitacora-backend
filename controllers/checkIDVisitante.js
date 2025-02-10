const db = require("../config/db");
const { countIDVisitanteQuery } = require("../queries/checkIDVisitante");

const checkIdVisitanteExists = (id, callback) => {
  db.query(countIDVisitanteQuery, [id], (error, results) => {
    if (error) {
      console.error("Error al ejecutar la consulta:", error.message);
      return callback(error, null);
    }
    const exists = results[0].count > 0;
    callback(null, exists);
  });
};

module.exports = {
  checkIdVisitanteExists,
};
