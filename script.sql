USE banco_presidentes;
SELECT * FROM partido;
SELECT * FROM presidente;
SELECT * FROM vice;
SELECT * FROM mandato;


-- 1) Mandatos por partido
SELECT p.nome_partido, COUNT(*) AS qtd
FROM Mandato m
JOIN Partido p ON m.id_partido = p.id_partido
GROUP BY p.nome_partido
ORDER BY qtd DESC;

-- 2) Duração média de mandato (dias)
SELECT AVG(DATEDIFF(data_fim, data_inicio)) AS media_dias
FROM Mandato;

-- 3) Mandatos por tipo de eleição
SELECT tipo_eleicao, COUNT(*) AS qtd
FROM Mandato
GROUP BY tipo_eleicao;
