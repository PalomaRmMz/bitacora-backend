const countIDRegistroVisitaQuery = `
  SELECT
      COUNT(*) AS count
    FROM  
      bt_registro_visitas
    WHERE 
      id_registro_visita = ?
`;

module.exports = {
  countIDRegistroVisitaQuery,
};
