const insertVisitaQuery = [
  `INSERT INTO dt_visitantes (
      nombre, a_paterno, a_materno, fecha_cumpleanos, calle, 
      numero_interior, numero_exterior, id_colonia, id_municipio, 
      id_estado, id_cp, id_seccion_electoral, correo, numero_celular
  ) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`,

  `INSERT INTO rg_usuarios (
      id_dt_usuario, nombre_usuario, id_tipo
  ) 
  VALUES (?, ?, ?);`,

  `INSERT INTO bt_registro_visitas (
      id_visitante, id_recepcionista, fecha_visita, hora_visita, 
      asunto, observaciones
  ) 
  VALUES (?, ?, ?, ?, ?, ?);`,
];

module.exports = {
  insertVisitaQuery,
};
