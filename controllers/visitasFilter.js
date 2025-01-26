const db = require("../config/db");
const { getVisitasBaseQuery } = require("../queries/visitas");

const getVisitasFilter = (filters, callback) => {
  let query = getVisitasBaseQuery;

  const conditions = [];
  const values = [];

  if (filters.fecha_visita) {
    conditions.push(`bt.fecha_visita = ?`);
    values.push(filters.fecha_visita);
  }

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
    conditions.push(`cc.nombre_colonias LIKE ?`);
    values.push(`%${filters.colonia}%`);
  }

  if (filters.municipio) {
    conditions.push(`cm.nombre_municipios LIKE ?`);
    values.push(`%${filters.municipio}%`);
  }

  if (filters.estado) {
    conditions.push(`ce.nombre_estado LIKE ?`);
    values.push(`%${filters.estado}%`);
  }

  if (filters.seccion) {
    conditions.push(`cse.nombre_seccion LIKE ?`);
    values.push(`%${filters.seccion}%`);
  }

  if (filters.usuario_recep) {
    conditions.push(`ru.nombre_usuario LIKE ?`);
    values.push(`%${filters.usuario_recep}%`);
  }

  if (filters.nombre_recep) {
    conditions.push(`du.nombre LIKE ?`);
    values.push(`%${filters.nombre_recep}%`);
  }

  if (filters.ap_recep) {
    conditions.push(`du.a_paterno LIKE ?`);
    values.push(`%${filters.ap_recep}%`);
  }

  if (filters.am_recep) {
    conditions.push(`du.a_materno LIKE ?`);
    values.push(`%${filters.am_recep}%`);
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
  getVisitasFilter,
};
