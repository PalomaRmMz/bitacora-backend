const db = require("../config/db");

const getVisitantesFilter = (filters, callback) => {
  let query = `
    SELECT
      dv.id_visitante,
      dv.nombre AS visitante_nombre,
      dv.a_paterno AS visitante_apellido_paterno,
      dv.a_materno AS visitante_apellido_materno,
      dv.fecha_cumpleanos,
      dv.calle,
      dv.numero_interior,
      dv.numero_exterior,
      c.nombre_colonias,
      m.nombre_municipios,
      e.nombre_estado,
      cp.codigo_postal,
      s.nombre_seccion,
      dv.correo,
      dv.numero_celular
    FROM  
      dt_visitantes dv
    JOIN 
      cat_colonias c ON dv.id_colonia = c.id_colonia
    JOIN 
      cat_municipios m ON dv.id_municipio = m.id_municipio
    JOIN 
      cat_estados e ON dv.id_estado = e.id_estado
    JOIN 
      cat_codigos_postales cp ON dv.id_cp = cp.id_cp
    JOIN 
      cat_secciones_electorales s ON dv.id_seccion_electoral = s.id_seccion_electoral
  `;

  const conditions = [];
  const values = [];

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

  db.query(query, values, callback);
};

module.exports = {
  getVisitantesFilter,
};
