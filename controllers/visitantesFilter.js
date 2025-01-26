const db = require("../config/db");
const { getVisitasBaseQuery } = require("../queries/visitas");

const getVisitantesFilter = (filters, callback) => {
  let query = getVisitasBaseQuery;

  const conditions = [];
  const values = [];

  if (filters.nombre_visitante) {
    conditions.push(`dv.nombre LIKE ?`);
    values.push(`%${filters.nombre_visitante}%`);
  }
  if (filters.ap_visitante) {
    conditions.push(`dv.a_paterno LIKE ?`);
    values.push(`%${filters.ap_visitante}%`);
  }
  if (filters.am_visitante) {
    conditions.push(`dv.a_materno LIKE ?`);
    values.push(`%${filters.am_visitante}%`);
  }
  if (filters.colonia) {
    conditions.push(`c.nombre_colonias LIKE ?`);
    values.push(`%${filters.colonia}%`);
  }
  if (filters.municipio) {
    conditions.push(`m.nombre_municipios LIKE ?`);
    values.push(`%${filters.municipio}%`);
  }
  if (filters.estado) {
    conditions.push(`e.nombre_estado LIKE ?`);
    values.push(`%${filters.estado}%`);
  }
  if (filters.seccion) {
    conditions.push(`s.nombre_seccion LIKE ?`);
    values.push(`%${filters.seccion}%`);
  }

  if (conditions.length > 0) {
    query += " WHERE " + conditions.join(" AND ");
  }

  db.query(query, values, (error, results) => {
    if (error) {
      console.error("Error ejecutando consulta:", error);
      return callback(error, null);
    }
    callback(null, results);
  });
};

module.exports = {
  getVisitantesFilter,
};
