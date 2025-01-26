const db = require("../config/db");
const { getVisitantesBaseQuery } = require("../queries/visitantes");

const getVisitantes = (callback) => {
  db.query(getVisitantesBaseQuery, (error, results) => {
    if (error) {
      console.error("Error al ejecutar la consulta:", error.message);
      return callback(error, null);
    }

    callback(null, results);
  });
};

module.exports = {
  getVisitantes,
};
