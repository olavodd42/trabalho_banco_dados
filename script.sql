USE banco_presidentes;

-- 1) Distribuição de duração dos mandatos (histograma)
--    Retorna, em anos completos, quantas vezes cada “faixa” de mandato ocorreu.
SELECT
  FLOOR(duracao_dias / 365) AS duracao_anos,
  COUNT(*)                    AS freq
FROM Mandato
GROUP BY duracao_anos
ORDER BY duracao_anos;


-- 2) Tendência da duração média por década de início (série temporal)
--    Para um line‑plot: média de dias de mandato ao longo das décadas.
SELECT
  CONCAT(FLOOR(YEAR(data_inicio) / 10) * 10, 's') AS decada,
  AVG(duracao_dias)                              AS media_dias
FROM Mandato
GROUP BY decada
ORDER BY decada;


-- 3) Dados brutos de duração por partido (box‑plot)
--    Para um boxplot que compare a variabilidade de mandatos entre legendas.
SELECT
  p.nome_partido,
  m.duracao_dias
FROM Mandato m
JOIN Partido p ON m.id_partido = p.id_partido;
