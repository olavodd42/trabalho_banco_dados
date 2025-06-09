CREATE TABLE Presidente (
  id_presidente   INT PRIMARY KEY,
  nome            VARCHAR(100) NOT NULL
);

CREATE TABLE Partido (
  id_partido      INT PRIMARY KEY,
  nome_partido    VARCHAR(100) NOT NULL
);

CREATE TABLE Vice (
  id_vice         INT PRIMARY KEY,
  nome_vice       VARCHAR(100)
);

CREATE TABLE Mandato (
  id_mandato      INT PRIMARY KEY,
  id_presidente   INT NOT NULL REFERENCES Presidente(id_presidente),
  id_partido      INT REFERENCES Partido(id_partido),
  data_inicio     DATE NOT NULL,
  data_fim        DATE,
  duracao         INTERVAL,
  tipo_eleicao    VARCHAR(20) NOT NULL
);

CREATE TABLE Mandato_Vice (
  id_mandato      INT REFERENCES Mandato(id_mandato),
  id_vice         INT REFERENCES Vice(id_vice),
  PRIMARY KEY (id_mandato, id_vice)
);
