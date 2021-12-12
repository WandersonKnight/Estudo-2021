SELECT COUNT(*) AS DuasDoses                                           
FROM vacinacao                                                         
WHERE vacinacao.dt_dose1 IS NOT NULL AND vacinacao.dt_dose2 IS NOT NULL