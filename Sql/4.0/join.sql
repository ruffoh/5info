CREATE TABLE Marchi (
    idMarchio INT PRIMARY KEY,
    Marchio VARCHAR(30),
    CEO_Nome VARCHAR(30),
    CEO_Cognome VARCHAR(30),
    AnnoFondazione YEAR,
    NumeroTelefono CHAR(3)
) ENGINE = INNODB;

CREATE TABLE Modelli (
    idModello INT PRIMARY KEY,
    idMarchio INT,
    NumeroPorte INT,
    Alimentazione VARCHAR(30),
    CONSTRAINT fkMarchioinModello FOREIGN KEY (idMarchio) REFERENCES Marchi (idMarchio)
) ENGINE = INNODB;

CREATE TABLE Automobili (
    NumeroTelaio INT PRIMARY KEY,
    idModello INT,
    Colore VARCHAR(30),
    Targa CHAR(7),
    CONSTRAINT fkModelloinAuto FOREIGN KEY (idModello) REFERENCES Modelli (idModello)
) ENGINE = INNODB;

-- Inserimento dei dati nella tabella Marchi
INSERT INTO Marchi (idMarchio, Marchio, CEO_Nome, CEO_Cognome, AnnoFondazione, NumeroTelefono) 
VALUES
    (29, 'Ferrari', 'Benedetto', 'Vigna', 1939, '123'),
    (34, 'Pagani', 'Horatio', 'Pagani', 1992, '456'),
    (12, 'Volvo', 'Jim', 'Rowan', 1927, '789'),
    (99, 'Lamborghini', 'Elettra', 'Lamborghini', 1963, '134');

-- Inserimento dei dati nella tabella Modelli
INSERT INTO Modelli (idModello, idMarchio, NumeroPorte, Alimentazione) 
VALUES
    (1, 29, 2, 'Benzina'),
    (45, 29, 4, 'Benzina'),
    (1, 12, 5, 'Diesel'),
    (1, 99, 4, 'Benzina');

-- Inserimento dei dati nella tabella Automobili
INSERT INTO Automobili (NumeroTelaio, idModello, Colore, Targa) 
VALUES
    (1001, 1, 'Rossa', 'AB123CD'),
    (1002, 45, 'Nera', 'EF456GH'),
    (1003, 1, 'Blu', 'IJ789KL'),
    (1004, 1, 'Gialla', 'MN012OP');
