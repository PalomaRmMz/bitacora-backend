const db = require("../config/db");

const getColonias = (callback) => {
  db.query(
    `SELECT * FROM cat_colonias ORDER BY nombre_colonias ASC;`,
    callback
  );
};

module.exports = {
  getColonias,
};
