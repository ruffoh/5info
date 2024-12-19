mysql -h localhost -u root

CREATE DATABASE azienda;
use azienda;    


CREATE TABLE Direttore(
Matricola VARCHAR(50) ,
primary key (Matricola) not null,
Nome VARCHAR(50) not null,
Cognome VARCHAR(50) not null);

CREATE TABLE Dipartimento(
Nome VARCHAR(50) not null,
primary key(Nome) ,
Sede VARCHAR(20) not null,
Telefono VARCHAR(12) not null,
Matricola VARCHAR(50) not null,
Foreign key(Matricola) references Direttore(Matricola));

INSERT INTO  Direttore (Matricola,Nome,Cognome) values ('sonogay','thomas','campigotto');