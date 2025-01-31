-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 31, 2025 alle 11:27
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5ait_automobili`
--
CREATE DATABASE IF NOT EXISTS `5ait_automobili` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `5ait_automobili`;

-- --------------------------------------------------------

--
-- Struttura della tabella `automobili`
--

CREATE TABLE `automobili` (
  `NumeroTelaio` int(11) NOT NULL,
  `idModello` int(11) NOT NULL,
  `Colore` varchar(20) NOT NULL,
  `Targa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `automobili`
--

INSERT INTO `automobili` (`NumeroTelaio`, `idModello`, `Colore`, `Targa`) VALUES
(20, 1, 'Rosso', 'B55VEN'),
(56, 45, 'Blu', 'D984NL'),
(89, 13, 'Arancione', 'O87N21'),
(101, 37, 'Nero', 'A32CNO');

-- --------------------------------------------------------

--
-- Struttura della tabella `log`
--

CREATE TABLE `log` (
  `Id` int(11) NOT NULL,
  `Data` datetime NOT NULL,
  `Utente` varchar(50) NOT NULL,
  `NomePagina` varchar(255) NOT NULL,
  `Descrizione` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `log`
--

INSERT INTO `log` (`Id`, `Data`, `Utente`, `NomePagina`, `Descrizione`) VALUES
(1, '2025-01-31 11:12:37', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(2, '2025-01-31 11:12:39', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(3, '2025-01-31 11:12:39', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(4, '2025-01-31 11:12:39', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(5, '2025-01-31 11:25:43', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(6, '2025-01-31 11:25:43', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web'),
(7, '2025-01-31 11:25:43', 'Ruffoni Giacomo', '005.01.pag0-LetturaDB.php', 'Accesso pagina web');

-- --------------------------------------------------------

--
-- Struttura della tabella `marchi`
--

CREATE TABLE `marchi` (
  `idMarchio` int(11) NOT NULL,
  `Marchio` varchar(50) NOT NULL,
  `CEO_Nome` varchar(50) NOT NULL,
  `CEO_Cognome` varchar(50) NOT NULL,
  `AnnoFondazione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `marchi`
--

INSERT INTO `marchi` (`idMarchio`, `Marchio`, `CEO_Nome`, `CEO_Cognome`, `AnnoFondazione`) VALUES
(1, 'Porsche', 'Marco', 'Nadalon', 1931),
(12, 'Volvo', 'Jim', 'Rowan', 1927),
(29, 'Ferrari', 'Benedetto', 'Vigna', 1939),
(34, 'Pagani', 'Horacio', 'Pagani', 1992),
(99, 'Lamborghini', 'Elettra', 'Lamborghini', 1963);

-- --------------------------------------------------------

--
-- Struttura della tabella `modelli`
--

CREATE TABLE `modelli` (
  `idModello` int(11) NOT NULL,
  `NumeroPorte` int(11) NOT NULL,
  `Alimentazione` varchar(50) NOT NULL,
  `idMarchio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `modelli`
--

INSERT INTO `modelli` (`idModello`, `NumeroPorte`, `Alimentazione`, `idMarchio`) VALUES
(1, 4, 'benzina', 29),
(13, 4, 'benzina', 12),
(37, 2, 'benzina', 99),
(45, 2, 'benzina', 34);

-- --------------------------------------------------------

--
-- Struttura della tabella `ruoli`
--

CREATE TABLE `ruoli` (
  `idRuolo` int(11) NOT NULL,
  `ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ruoli`
--

INSERT INTO `ruoli` (`idRuolo`, `ruolo`) VALUES
(-1, 'Undefined'),
(0, 'Unverified'),
(1, 'Base'),
(2, 'Expert'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `utente` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `idRuolo` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`utente`, `password`, `idRuolo`) VALUES
('jack@gmail.com', 'Pass123!', 0),
('ricky@gmail.com', 'Passw0rd!', 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `automobili`
--
ALTER TABLE `automobili`
  ADD PRIMARY KEY (`NumeroTelaio`),
  ADD KEY `fk_AutomobileModello` (`idModello`);

--
-- Indici per le tabelle `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `marchi`
--
ALTER TABLE `marchi`
  ADD PRIMARY KEY (`idMarchio`);

--
-- Indici per le tabelle `modelli`
--
ALTER TABLE `modelli`
  ADD PRIMARY KEY (`idModello`),
  ADD KEY `fk_ModelloMarchio` (`idMarchio`);

--
-- Indici per le tabelle `ruoli`
--
ALTER TABLE `ruoli`
  ADD PRIMARY KEY (`idRuolo`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`utente`),
  ADD KEY `fk_utenti_ruoli` (`idRuolo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `log`
--
ALTER TABLE `log`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `automobili`
--
ALTER TABLE `automobili`
  ADD CONSTRAINT `fk_AutomobileModello` FOREIGN KEY (`idModello`) REFERENCES `modelli` (`idModello`);

--
-- Limiti per la tabella `modelli`
--
ALTER TABLE `modelli`
  ADD CONSTRAINT `fk_ModelloMarchio` FOREIGN KEY (`idMarchio`) REFERENCES `marchi` (`idMarchio`);

--
-- Limiti per la tabella `utenti`
--
ALTER TABLE `utenti`
  ADD CONSTRAINT `fk_utenti_ruoli` FOREIGN KEY (`idRuolo`) REFERENCES `ruoli` (`idRuolo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
