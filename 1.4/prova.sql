CREATE DATABASE PrepVerifica;

USE PrepVerifica;

-- Crea la tabella Autori
CREATE TABLE
    Autori (
        idAutore int AUTO_INCREMENT  primary key,
        nome VARCHAR(50) not null,
        cognome VARCHAR(50) not null
    )ENGINE = INNODB;

-- Crea la tabella Libri
CREATE TABLE
    Libri (
        idLibro int AUTO_INCREMENT  PRIMARY KEY,
        titolo VARCHAR(30) NOT NULL,
        annoPubblicazione YEAR,
        idAutore int,
         CONSTRAINT fkLibro FOREIGN KEY (idAutore) references Autori (idAutore),
    )ENGINE = INNODB;

-- Crea la tabella Clienti
create table
    Clienti (
        idCliente int AUTO_INCREMENT  primary key,
        nome varchar(50) not null,
        cognome varchar(50) not null,
        email varchar(100) not null,
    )ENGINE = INNODB;

-- Crea la tabella Prestiti
create table
    Prestiti (
        idPrestito int AUTO_INCREMENT primary key,
        idLibro int,
        CONSTRAINT fkPresLibro FOREIGN key (idLibro) references Libri (idLibro),
        idCliente int,
         CONSTRAINT fkPresCliente FOREIGN key (idCliente) references Clienti (idCliente),
        dataPrestito data not null,
        dataRestrizione data not null,
    ) ENGINE = INNODB;

INSERT into Autori(nome,cognome) values
 ('marco', 'nadalon'),
 ('giovanni','girotto'),
 ('alex', 'canzian'),
 ('mattia','gobbo');
 
 INSERT into Libri(titolo,annoPubblicazione,idAutore) values
 ('Grande libro',1999,1),
 ('Avventura a Ponte di Piave',2006,2),
 ('Biografia della mia vita',2000,3),
 ('Un metro e un tappo',2020,4);

 INSERT into Clienti(nome,cognome,email) values
 ('toffolo','jacopo','sonoceliaco@bislungo.it'),
 ('ayoush','sharma','roblox@india.it'),
 ('andrea','kovachaj','andreag63@gipsy.it');

 INSERT into Prestiti(idPrestito,idCliente,dataPrestito,dataRestrizione) values
 (1,1,'2024-06-20','2024-07-20'),
 (2,2,'2024-06-20','2024-07-20'),
 (3,1,'2024-06-20','2024-07-20');
