mysql -h localhost -u root

SHOW DATABASES;

USE info_25;

SHOW TABLES;

DROP DATABASE IF EXISTS 2024_info_5XAT;
CREATE DATABASE 2024_info_5XAT;
USE 2024_info_5XAT;

CREATE TABLE Studenti(
  CF CHAR(16) NOT NULL,
  DataNascita DATE NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  Cognome VARCHAR(50) NOT NULL,
  PRIMARY KEY (CF)
) ENGINE = INNODB;

TRUNCATE TABLE Studenti; 

--inserisco studenti 
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
) ENGINE = INNODB;
INSERT INTO Classi
(Anno, Sezione, Indirizzo, Aula)
VALUES
(5, 'A', 'IT', NULL),
(5, 'X', 'AT', NULL);

CREATE OR REPLACE TABLE Provincie(
  Codice CHAR(2) NOT NULL,
  Provincia VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codice)
) ENGINE = INNODB;
RENAME TABLE Provincie TO Province;
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
AND TABLE_NAME='Province'
LIMIT 300;

CREATE OR REPLACE TABLE Citta(
  CodiceCatastale char(4) NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Provincia CHAR(2) NOT NULL,
  PRIMARY KEY (CodiceCatastale),
  CONSTRAINT fk_Citta_Provincia
  FOREIGN KEY(Provincia) 
  	REFERENCES Province(Codice)
) ENGINE = INNODB;


INSERT INTO Province
(Codice, Provincia)
VALUES
('BA', 'Bari');

INSERT INTO Citta
(CodiceCatastale, Provincia, Nome)
VALUES
('F770', 'TV', 'Motta di Livenza'),
('E092', 'TV', 'Gorgo al Monticano'),
('F999', 'TV', 'Oderzo'),
('H823', 'TV', 'San Donà di Piave'),
('G846', 'TV', 'Ponte di Piave'),
('F284', 'BA', 'Molfetta');

SELECT * FROM province;
SELECT * FROM citta;
SELECT * FROM studenti;
SELECT * FROM classi;

alter table studenti
add column cittaNascita char(4) not null;

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

alter table studenti
add column prove char(4) not null;

alter table studenti
drop column prove;

alter table studenti
CHANGE cittaNascita cittaDiNascita char (4);

INSERT INTO STUDENTI (CittaDiNascita) VALUES ('F999');

ALTER TABLE studenti
	ADD COLUMN LuogoNascita char(4) NOT NULL;
	
-- DA NON FARE
-- INSERT INTO studenti (LuogoNascita) VALUES ('G846');


-- aggiorno la tabella studenti e aggiunge in tutti gli studenti la cittaNascita = valore
UPDATE studenti SET cittaNascita = 'G846';
UPDATE studenti SET cittaNascita = 'F999';


-- inserisco in città e 2 nuove infomazioni
INSERT INTO Citta 
(Codicecatastale,Provincia,Nome)
VALUES
('H501','RM','Roma'),
('G478','PG','Perugia');


-- inserisco in Province e 2 nuove infomazioni
INSERT INTO Province 
(Codice,Provincia)
VALUES
('RM','Roma'),
('PG','Perugia');

-- AGGIORNA la città di nascita in base al CF 

UPDATE studenti SET cittaNascita = 'G478' WHERE CF = 'GBTTMS05T13F999N';

UPDATE studenti   SET cittaNascita = 'H501' WHERE CF = 'RZVLNA05S28I124C';


INSERT INTO Citta
(CodiceCatastale, Provincia, Nome)
VALUES
('M089', 'TV', 'Vittorio Veneto');

UPDATE studenti SET LuogoNascita = 'M089'
WHERE CF = 'TTTVCN05T13F999N';

UPDATE studenti SET LuogoNascita = 'G914'
WHERE CF = 'LMSMTT05T13F999N';