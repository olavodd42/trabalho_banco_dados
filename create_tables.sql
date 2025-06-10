CREATE DATABASE IF NOT EXISTS banco_presidentes;
USE banco_presidentes;

CREATE TABLE IF NOT EXISTS Presidente (
  id_presidente   INT PRIMARY KEY,
  nome            VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Partido (
  id_partido      INT PRIMARY KEY,
  nome_partido    VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Vice (
  id_vice         INT PRIMARY KEY,
  nome_vice       VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Mandato (
  id_mandato      INT PRIMARY KEY,
  id_presidente   INT NOT NULL,
  id_partido      INT,
  data_inicio     DATE NOT NULL,
  data_fim        DATE,
  duracao_dias    INT,
  tipo_eleicao    VARCHAR(50),
  id_vice         INT,
  FOREIGN KEY (id_presidente) REFERENCES Presidente(id_presidente),
  FOREIGN KEY (id_partido)    REFERENCES Partido(id_partido),
  FOREIGN KEY (id_vice)       REFERENCES Vice(id_vice)
);
