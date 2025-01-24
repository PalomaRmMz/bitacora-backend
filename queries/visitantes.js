const db = require("../config/db");

const getVisitantes = (callback) => {
  db.query(
    `
SELECT
    dv.id_visitante,
    dv.nombre AS visitante_nombre,
    dv.a_paterno AS visitante_apellido_paterno,
    dv.a_materno AS visitante_apellido_materno,
    dv.fecha_cumpleanos AS cumpleanos,
    dv.calle AS calle,
    dv.numero_interior AS num_int,
    dv.numero_exterior AS num_ext,
    c.nombre_colonias AS colonia,
    m.nombre_municipios AS municipio,
    e.nombre_estado AS estado,
    cp.codigo_postal AS cp,
    s.nombre_seccion AS seccion,
    dv.correo AS correo,
    dv.numero_celular AS celular
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
    cat_secciones_electorales s ON dv.id_seccion_electoral = s.id_seccion_electoral;
    `,
    callback
  );
};

module.exports = {
  getVisitantes,
};
