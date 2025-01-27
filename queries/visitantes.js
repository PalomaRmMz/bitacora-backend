const getVisitantesBaseQuery = `
  SELECT
      dv.id_visitante,
      dv.nombre AS nombre_visitante,
      dv.a_paterno AS ap_visitante,
      dv.a_materno AS am_visitante,
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
    LEFT JOIN 
      cat_colonias c ON dv.id_colonia = c.id_colonia
    LEFT JOIN 
      cat_municipios m ON dv.id_municipio = m.id_municipio
    LEFT JOIN 
      cat_estados e ON dv.id_estado = e.id_estado
    LEFT JOIN 
      cat_codigos_postales cp ON dv.id_cp = cp.id_cp
    LEFT JOIN 
      cat_secciones_electorales s ON dv.id_seccion_electoral = s.id_seccion_electoral
`;

module.exports = {
  getVisitantesBaseQuery,
};
