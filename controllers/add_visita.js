const db = require("../config/db");
const { insertVisitaQuery } = require("../queries/add_visita");

const insertVisita = (visitanteData, usuarioData, visitaData, callback) => {
  db.query(
    insertVisitaQuery[0],
    [
      visitanteData.nombre,
      visitanteData.a_paterno,
      visitanteData.a_materno,
      visitanteData.fecha_cumpleanos,
      visitanteData.calle,
      visitanteData.numero_interior,
      visitanteData.numero_exterior,
      visitanteData.id_colonia,
      visitanteData.id_municipio,
      visitanteData.id_estado,
      visitanteData.id_cp,
      visitanteData.id_seccion_electoral,
      visitanteData.correo,
      visitanteData.numero_celular,
    ],
    (error, results) => {
      if (error) {
        console.error("Error al insertar el visitante:", error.message);
        return callback(error, null);
      }

      const idVisitante = results.insertId;

      db.query(
        insertVisitaQuery[1],
        [
          usuarioData.id_dt_usuario,
          usuarioData.nombre_usuario,
          usuarioData.id_tipo,
        ],
        (error, results) => {
          if (error) {
            console.error("Error al insertar el usuario:", error.message);
            return callback(error, null);
          }

          const idUsuario = results.insertId;

          db.query(
            insertVisitaQuery[2],
            [
              idVisitante,
              idUsuario,
              visitaData.fecha_visita,
              visitaData.hora_visita,
              visitaData.asunto,
              visitaData.observaciones,
            ],
            (error, results) => {
              if (error) {
                console.error("Error al insertar la visita:", error.message);
                return callback(error, null);
              }

              callback(null, results);
            }
          );
        }
      );
    }
  );
};

module.exports = {
  insertVisita,
};
