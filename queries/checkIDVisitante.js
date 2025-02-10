const countIDVisitanteQuery = `
  SELECT
      COUNT(*) AS count
    FROM  
      dt_visitantes
    WHERE 
      id_visitante = ?
`;

module.exports = {
  countIDVisitanteQuery,
};
