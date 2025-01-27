const db = require("../config/db");
const { insertVisitaQuery } = require("../queries/add_visita");

const insertVisita = (visitanteData, visitaData, callback) => {
  db.query(
    insertVisitaQuery[0],
    [
      visitanteData.id_visitante,
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

      const idVisitante = visitanteData.id_visitante;

      db.query(
        insertVisitaQuery[1],
        [
          visitaData.id_registro_visita,
          idVisitante,
          visitaData.id_recepcionista,
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
};

module.exports = {
  insertVisita,
};
