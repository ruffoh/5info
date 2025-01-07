mysql -h localhost -u root

SHOW DATABASES;

USE nomeDatabase;

SHOW TABLES;

DROP DATABASE IF EXISTS info_25;
CREATE DATABASE info_25;
USE info_25;

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
('LBRKVN05T13F999N', '20060920', 'Kevin', 'Alberghetti'),
('BRSLNZ05T13F999N', '20061119', 'Lorenzo', 'Breseghello'),
('CSNSMN05T13F999N', '20060627', 'Simone', 'Casonato'),
('DLLRCH05T13F999N', '20040709', 'Richard', 'Deliallisi'),
('FRRRNE05T13F999N', '20050401', 'Rene', 'Ferrazzo'),
('GRRMHL05T13F999N', '20040820', 'Michele', 'Girardi'),
('GRSLSS05T13F999N', '20050620', 'Alessio', 'Grassotto'),
('LMSMTT05T13F999N', '20050604', 'Matteo', 'Lama Solet'),
('RNGRBN05T13F999N', '20061206', 'Ruben', 'Ranghiuc'),
('STNNCL05T13F999N', '20061228', 'Nicola Francesco', 'Stanciu'),
('TTTVCN05T13F999N', '20051029', 'Vincenzo', 'Tattoli'),
('VNRLNZ05T13F999N', '20060804', 'Lorenzo', 'Veneruzzo');
 

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

CREATE OR REPLACE TABLE Province(
  Codice CHAR(2) NOT NULL,
  Provincia VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codice)
);
INSERT INTO Province
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
AND TABLE_NAME='studenti'
LIMIT 300;

CREATE OR REPLACE TABLE Citta(
  CodiceCatastale CHAR(4) NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Provincia CHAR(2) NOT NULL,
  PRIMARY KEY (CodiceCatastale),
  CONSTRAINT fk_Citta_Provincia
  FOREIGN KEY(Provincia) 
  	REFERENCES Province(Codice)
) ENGINE = INNODB;
INSERT INTO Citta
(CodiceCatastale, Provincia, Nome)
VALUES
('F770', 'TV', 'Motta di Livenza'),
('E092', 'TV', 'Gorgo al Monticano'),
('F999', 'TV', 'Oderzo'),
('H823', 'VE', 'San Donà di Piave'),
('G846', 'TV', 'Ponte di Piave'),
('F284', 'BA', 'Molfetta');

SELECT * FROM citta;
SELECT * FROM studenti;

ALTER TABLE studenti                                 
	ADD CittaNascita CHAR(4) NOT NULL;                  -- aggiunge colonna 
ALTER TABLE studenti
	DROP COLUMN LuogoNascita;                           -- toglie colonna 
	
ALTER TABLE studenti
	RENAME LuogoDiNascita;

ALTER TABLE studenti CHANGE DataNascita DataDiNascita DATE NOT NULL;

ALTER TABLE studenti RENAME COLUMN LuogoNascita TO LuogoDiNascita;

-- update value 
UPDATE Studenti 
SET CittaNascita = 'F770';

SELECT * FROM Citta  WHERE CodiceCatastale = 'F770';   


ALTER TABLE Studenti
ADD CONSTRAINT CittaNascita
FOREIGN KEY (CittaNascita)
REFERENCES citta(CodiceCatastale)
ON DELETE RESTRICT ON UPDATE RESTRICT;