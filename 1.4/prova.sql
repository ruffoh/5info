CREATE DATABASE PrepVerifica;

USE PrepVerifica;

-- Crea la tabella Autori
CREATE TABLE Autori (
    idAutore INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL
) ENGINE = INNODB;

-- Crea la tabella Libri
CREATE TABLE Libri (
    idLibro INT AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(30) NOT NULL,
    annoPubblicazione YEAR,
    idAutore INT,
    CONSTRAINT fkLibro FOREIGN KEY (idAutore) REFERENCES Autori(idAutore)
) ENGINE = INNODB;

-- Crea la tabella Clienti
CREATE TABLE Clienti (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
) ENGINE = INNODB;

-- Crea la tabella Prestiti
CREATE TABLE Prestiti (
    idPrestito INT AUTO_INCREMENT PRIMARY KEY,
    idLibro INT,
    idCliente INT,
    dataPrestito DATE NOT NULL,
    dataRestituzione DATE NOT NULL,
    CONSTRAINT fkPresLibro FOREIGN KEY (idLibro) REFERENCES Libri(idLibro),
    CONSTRAINT fkPresCliente FOREIGN KEY (idCliente) REFERENCES Clienti(idCliente)
) ENGINE = INNODB;

-- Inserimento dati nella tabella Autori
INSERT INTO Autori (nome, cognome) VALUES
('marco', 'nadalon'),
('giovanni', 'girotto'),
('alex', 'canzian'),
('mattia', 'gobbo');

-- Inserimento dati nella tabella Libri
INSERT INTO Libri (titolo, annoPubblicazione, idAutore) VALUES
('Grande libro', 1999, 1),
('Avventura a Ponte di Piave', 2006, 2),
('Biografia della mia vita', 2000, 3),
('Un metro e un tappo', 2020, 4);

-- Inserimento dati nella tabella Clienti
INSERT INTO Clienti (nome, cognome, email) VALUES
('toffolo', 'jacopo', 'sonoceliaco@bislungo.it'),
('ayoush', 'sharma', 'roblox@india.it'),
('andrea', 'kovachaj', 'andreag63@gipsy.it');

-- Inserimento dati nella tabella Prestiti
INSERT INTO Prestiti (idLibro, idCliente, dataPrestito, dataRestituzione) VALUES
(1, 1, '2024-06-20', '2024-07-20'),
(2, 2, '2024-06-20', '2024-07-20'),
(3, 1, '2024-06-20', '2024-07-20');

// query 

SELECT titolo
FROM Libri
WHERE idAutore = (
    SELECT idAutore 
    FROM Autori 
    WHERE nome = 'Giovanni' AND cognome = 'Girotto'
);

SELECT Nome
from Clienti
WHERE idCliente IN (
    SELECT idCliente
    from Prestiti
    
);

SELECT titolo,idAutore
from Libri
WHERE annoPubblicazione > 2000;
