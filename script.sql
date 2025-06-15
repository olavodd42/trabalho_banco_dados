USE banco_presidentes;

-- 1) Distribuição de duração dos mandatos
SELECT
  FLOOR(duracao_dias / 365) AS duracao_anos,
  COUNT(*)                    AS freq
FROM Mandato
GROUP BY duracao_anos
ORDER BY duracao_anos;


-- 2) Tendência da duração média por década de início
SELECT
  CONCAT(FLOOR(YEAR(data_inicio) / 10) * 10, 's') AS decada,
  AVG(duracao_dias)                              AS media_dias
FROM Mandato
GROUP BY decada
ORDER BY decada;


-- 3) Dados brutos de duração por partido
SELECT
  p.nome_partido,
  m.duracao_dias
FROM Mandato m
JOIN Partido p ON m.id_partido = p.id_partido;
