-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Creato il: Feb 07, 2025 alle 07:05
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5ait_vacanze`
--
CREATE DATABASE IF NOT EXISTS `5ait_vacanze` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `5ait_vacanze`;

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
CREATE TABLE `prenotazioni` (
  `ID_Prenotazione` int(11) NOT NULL,
  `Data_Creazione` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_Utente` int(11) NOT NULL,
  `Data_Inizio_Soggiorno` date NOT NULL,
  `Durata_Soggiorno` tinyint(4) NOT NULL,
  `Data_Fine_Soggiorno` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`ID_Prenotazione`, `Data_Creazione`, `ID_Utente`, `Data_Inizio_Soggiorno`, `Durata_Soggiorno`, `Data_Fine_Soggiorno`) VALUES
(1, '2025-02-06 17:57:45', 12, '2025-02-12', 4, NULL),
(2, '2025-02-06 18:00:15', 12, '2025-02-12', 2, NULL),
(3, '2025-02-06 18:00:15', 10, '2025-02-14', 6, NULL),
(4, '2025-02-06 18:00:15', 132, '2025-02-11', 3, NULL),
(5, '2025-02-06 18:00:15', 62, '2025-02-16', 2, NULL),
(6, '2025-02-06 18:00:15', 62, '2025-02-09', 5, NULL),
(7, '2025-02-06 18:00:15', 62, '2025-02-22', 4, NULL),
(8, '2025-02-06 18:00:15', 2, '2025-02-18', 5, NULL);

--
-- Trigger `prenotazioni`
--
DROP TRIGGER IF EXISTS `prenotazioni_Modyfy_Date`;
DELIMITER $$
CREATE TRIGGER `prenotazioni_Modyfy_Date` AFTER UPDATE ON `prenotazioni` FOR EACH ROW UPDATE prenotazioni SET Data_Creazione = NOW() WHERE id = OLD.ID_Prenotazione
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

DROP TABLE IF EXISTS `utenti`;
CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`ID_Prenotazione`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `ID_Prenotazione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
