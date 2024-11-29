mysql -h localhost -u root

SHOW DATABASES;

USE test;

SHOW TABLES;

DROP DATABASE IF EXISTS Info_25;
CREATE DATABASE Info_25;
USE Info_25;

CREATE OR REPLACE TABLE Studenti(
  CF CHAR(16) NOT NULL,
  DataNascita DATE NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  Cognome VARCHAR(50) NOT NULL,
  PRIMARY KEY (CF)
);

TRUNCATE TABLE Studenti;

INSERT INTO Studenti
(CF, DataNascita, Nome, Cognome)
VALUES
('GBTTMS05T13F999N', '20051213', 'Tommaso', 'Agabiti'),
('RZVLNA05S28I124C', '20051128', 'Razvan', 'Ailenei'),
('BTTGRL06M27F999C', '20060827', 'Gabriele', 'Battistella'),
('BLLFNC05S23F999V', '20051123', 'Francesco', 'Bello'),
('CMPTMS06P19D674L', '20060919', 'Thomas', 'Campigotto'),
('CNZLXA06R29F999P', '20061029', 'Alex', 'Canzian');

SELECT Cognome, Nome, CF
FROM Studenti
ORDER BY Cognome, Nome;

CREATE OR REPLACE TABLE Classi(
  Anno INT NOT NULL,
  Sezione CHAR(1) NOT NULL,
  Indirizzo VARCHAR(50) NOT NULL,
  Aula CHAR(5),
  PRIMARY KEY (Anno, Sezione, Indirizzo)
);
INSERT INTO Classi
(Anno, Sezione, Indirizzo, Aula)
VALUES
(5, 'A', 'IT', NULL),
(5, 'X', 'AT', NULL);

CREATE OR REPLACE TABLE Provincie(
  Codice CHAR(2) NOT NULL,
  Provincia VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codice)
);
INSERT INTO Provincie
(Codice, Provincia)
VALUES
('TV', 'Treviso'),
('VE', 'Venezia');


SELECT 
  table_name, 
  column_name, 
  ordinal_position, 
  column_default,
  column_default IS NULL
FROM information_schema.COLUMNS
WHERE table_schema=DATABASE()
AND TABLE_NAME='Provincie'
LIMIT 300;

CREATE OR REPLACE TABLE Citta(
  CodiceCatastale char(4) NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Provincia CHAR(2) NOT NULL,
  PRIMARY KEY (CodiceCatastale),
  constraint fk_Citta_Provincia
  foreign key(Provincia) 
  	references Provincie(Codice)
);
INSERT INTO Citta
(CodiceCatastale, Provincia, Nome)
VALUES
('F770', 'TV', 'Motta di Livenza'),
('E092', 'TV', 'Gorgo al Monticano'),
('F999', 'TV', 'Oderzo'),
('H823', 'TV', 'San Donà di Piave'),
('G846', 'TV', 'Ponte di Piave');

USE test;

SHOW TABLES;

DROP DATABASE IF EXISTS Info_25;
CREATE DATABASE Info_25;
USE Info_25;

CREATE OR REPLACE TABLE Studenti(
  CF CHAR(16) NOT NULL,
  DataNascita DATE NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  Cognome VARCHAR(50) NOT NULL,
  CodiceCatastale CHAR(4) NOT NULL,
  PRIMARY KEY (CF)
);

TRUNCATE TABLE Studenti;

INSERT INTO Studenti
(CF, DataNascita, Nome, Cognome)
VALUES
('GBTTMS05T13F999N', '20051213', 'Tommaso', 'Agabiti'),
('RZVLNA05S28I124C', '20051128', 'Razvan', 'Ailenei'),
('BTTGRL06M27F999C', '20060827', 'Gabriele', 'Battistella'),
('BLLFNC05S23F999V', '20051123', 'Francesco', 'Bello'),
('CMPTMS06P19D674L', '20060919', 'Thomas', 'Campigotto'),
('CNZLXA06R29F999P', '20061029', 'Alex', 'Canzian');

SELECT Cognome, Nome, CF
FROM Studenti
ORDER BY Cognome, Nome;

CREATE OR REPLACE TABLE Classi(
  Anno INT NOT NULL,
  Sezione CHAR(1) NOT NULL,
  Indirizzo VARCHAR(50) NOT NULL,
  Aula CHAR(5),
  PRIMARY KEY (Anno, Sezione, Indirizzo)
);
INSERT INTO Classi
(Anno, Sezione, Indirizzo, Aula)
VALUES
(5, 'A', 'IT', NULL),
(5, 'X', 'AT', NULL);

CREATE OR REPLACE TABLE Provincie(
  Codice CHAR(2) NOT NULL,
  Provincia VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codice)
);
INSERT INTO Provincie
(Codice, Provincia)
VALUES
('TV', 'Treviso'),
('VE', 'Venezia');


SELECT 
  table_name, 
  column_name, 
  ordinal_position, 
  column_default,
  column_default IS NULL
FROM information_schema.COLUMNS
WHERE table_schema=DATABASE()
AND TABLE_NAME='Provincie'
LIMIT 300;

CREATE OR REPLACE TABLE Citta(
  CodiceCatastale char(4) NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Provincia CHAR(2) NOT NULL,
  PRIMARY KEY (CodiceCatastale),
  constraint fk_Citta_Provincia
  foreign key(Provincia) 
  	references Provincie(Codice)
);
INSERT INTO Citta
(CodiceCatastale, Provincia, Nome)
VALUES
('F770', 'TV', 'Motta di Livenza'),
('E092', 'TV', 'Gorgo al Monticano'),
('F999', 'TV', 'Oderzo'),
('H823', 'TV', 'San Donà di Piave'),
('G846', 'TV', 'Ponte di Piave');
Script SQL.txt


