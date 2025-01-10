CREATE DATABASE Biblioteca;

USE Biblioteca ;

CREATE TABLE Libri (
    Id int  ,
    primary key(Id);
    titolo VARCHAR(100) not null,
    autore VARCHAR(50) not null,
    anno_pub YEAR not null,
    genere VARCHAR(30) not null,
);

INSERT INTO Libri (Id,titolo,autore,anno_pub,genere) values (1,'Il Signore degli Anelli','J.R.R. Tolkien',1954,'Fantasy');
INSERT INTO Libri (Id,titolo,autore,anno_pub,genere) values (2,'1984','George Orwell',1949,'Distopia');
INSERT INTO Libri (Id,titolo,autore,anno_pub,genere) values (3,'Orgoglio e Pregiudizio','Jane Austen',1813,'Romanzo');

UPDATE Libri
SET genere = Fantascienza
WHERE id = 2;


SELECT * from Libri WHERE anno_pub < 1900;


DELETE FROM Libri where titolo = 1984;

alter table 
add disponibile BOOLEAN = true;