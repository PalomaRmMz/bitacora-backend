const db = require("../config/db");

const getVisitas = (callback) => {
  db.query(
    `
SELECT 
    bt.id_registro_visita,
    bt.fecha_visita,
    bt.hora_visita,
    dv.nombre AS visitante_nombre,
    dv.a_paterno AS visitante_apellido_paterno,
    dv.a_materno AS visitante_apellido_materno,
    dv.fecha_cumpleanos,
    dv.calle,
    dv.numero_interior,
    dv.numero_exterior,
    cc.nombre_colonias,
    cm.nombre_municipios,
    ce.nombre_estado,
    cp.codigo_postal,
    cse.nombre_seccion,
    bt.asunto,
    bt.observaciones,
    ru.nombre_usuario AS recepcionista_usuario,
    du.nombre AS recepcionista_nombre,
    du.a_paterno AS recepcionista_apellido_paterno,
    du.a_materno AS recepcionista_apellido_materno
FROM 
    bt_registro_visitas bt
JOIN 
    dt_visitantes dv ON bt.id_visitante = dv.id_visitante
LEFT JOIN 
    cat_colonias cc ON dv.id_colonia = cc.id_colonia
LEFT JOIN 
    cat_municipios cm ON dv.id_municipio = cm.id_municipio
LEFT JOIN 
    cat_estados ce ON dv.id_estado = ce.id_estado
LEFT JOIN 
    cat_codigos_postales cp ON dv.id_cp = cp.id_cp
LEFT JOIN 
    cat_secciones_electorales cse ON dv.id_seccion_electoral = cse.id_seccion_electoral
JOIN 
    rg_usuarios ru ON bt.id_recepcionista = ru.id_rg_usuarios
JOIN 
    dt_usuario du ON ru.id_dt_usuario = du.id_dt_usuario;
    `,
    callback
  );
};

module.exports = {
  getVisitas,
};
