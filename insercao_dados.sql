USE banco_presidentes;


-- 1) PRESIDENTE
LOAD DATA LOCAL INFILE 'presidentes.csv'
INTO TABLE Presidente
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_presidente, nome);

-- Verificação
SELECT COUNT(*) AS total_presidentes, MIN(id_presidente), MAX(id_presidente)
  FROM Presidente;


-- 2) PARTIDO
LOAD DATA LOCAL INFILE 'partidos.csv'
INTO TABLE Partido
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_partido, nome_partido);

-- Verificação
SELECT COUNT(*) AS total_partidos, MIN(id_partido), MAX(id_partido)
  FROM Partido;


-- 3) VICE
LOAD DATA LOCAL INFILE 'vices.csv'
INTO TABLE Vice
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_vice, nome_vice);

-- Verificação
SELECT COUNT(*) AS total_vices, MIN(id_vice), MAX(id_vice)
  FROM Vice;


-- 4) MANDATO
LOAD DATA LOCAL INFILE 'mandatos.csv'
INTO TABLE Mandato
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_mandato, id_presidente, id_partido, id_vice, data_inicio, data_fim, duracao_dias, eleicao);

-- Verificação
SELECT COUNT(*)        AS total_mandatos,
       MIN(data_inicio) AS primeira_data,
       MAX(data_fim)    AS ultima_data
  FROM Mandato;
