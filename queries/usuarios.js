const db = require("../config/db");

const getUsuarios = (callback) => {
  db.query(
    `
    SELECT 
        rg.nombre_usuario AS usuario,
        dt.nombre AS nombre,
        dt.a_paterno AS apellido_paterno,
        dt.a_materno AS apellido_materno,
        cat.descripcion AS tipo_usuario
    FROM 
        rg_usuarios rg
    INNER JOIN 
        dt_usuario dt ON rg.id_dt_usuario = dt.id_dt_usuario
    INNER JOIN 
        cat_usuario cat ON rg.id_tipo = cat.id_tipo;
    `,
    callback
  );
};

module.exports = {
  getUsuarios,
};
