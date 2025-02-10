const db = require("../config/db");
const {
  countIDRegistroVisitaQuery,
} = require("../queries/checkIDRegistroVisita");

const checkIdRegistroVisitaExists = (id, callback) => {
  db.query(countIDRegistroVisitaQuery, [id], (error, results) => {
    if (error) {
      console.error("Error al ejecutar la consulta:", error.message);
      return callback(error, null);
    }
    const exists = results[0].count > 0;
    callback(null, exists);
  });
};

module.exports = {
  checkIdRegistroVisitaExists,
};
