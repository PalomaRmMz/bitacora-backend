const db = require("../config/db");
const { getVisitasBaseQuery } = require("../queries/visitas");

const getVisitas = (callback) => {
  db.query(getVisitasBaseQuery, (error, results) => {
    if (error) {
      console.error("Error al ejecutar la consulta:", error.message);
      return callback(error, null);
    }

    callback(null, results);
  });
};

module.exports = {
  getVisitas,
};
