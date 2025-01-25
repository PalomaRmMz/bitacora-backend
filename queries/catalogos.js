const db = require("../config/db");

const getColonias = (callback) => {
  db.query(
    `SELECT * FROM cat_colonias ORDER BY nombre_colonias ASC;`,
    callback
  );
};

const getMunicipios = (callback) => {
  db.query(
    `SELECT * FROM cat_municipios ORDER BY nombre_municipios ASC;`,
    callback
  );
};

const getEstados = (callback) => {
  db.query(`SELECT * FROM cat_estados ORDER BY nombre_estado ASC;`, callback);
};

const getCP = (callback) => {
  db.query(
    `SELECT * FROM cat_codigos_postales ORDER BY codigo_postal ASC;`,
    callback
  );
};

const getSecciones = (callback) => {
  db.query(
    `SELECT * FROM cat_secciones_electorales ORDER BY nombre_seccion ASC;`,
    callback
  );
};

module.exports = {
  getColonias,
  getMunicipios,
  getEstados,
  getCP,
  getSecciones,
};
