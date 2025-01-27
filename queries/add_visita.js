const insertVisitaQuery = [
  `INSERT INTO dt_visitantes (
      id_visitante, nombre, a_paterno, a_materno, fecha_cumpleanos, calle, 
      numero_interior, numero_exterior, id_colonia, id_municipio, 
      id_estado, id_cp, id_seccion_electoral, correo, numero_celular
  ) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`,

  `INSERT INTO bt_registro_visitas (
      id_registro_visita,id_visitante, id_recepcionista, fecha_visita, hora_visita, 
      asunto, observaciones
  ) 
  VALUES (?, ?, ?, ?, ?, ?, ?);`,
];

module.exports = {
  insertVisitaQuery,
};
