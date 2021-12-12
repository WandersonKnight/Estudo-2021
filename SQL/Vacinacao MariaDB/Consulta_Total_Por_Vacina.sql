SELECT vacinacao.vacina_id, COUNT(*) AS VacinasAplicadas
FROM vacinacao
GROUP BY vacinacao.vacina_id