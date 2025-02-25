-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 23, 2025 alle 18:18
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
-- Struttura della tabella `alberghi`
--

CREATE TABLE `alberghi` (
  `ID_Albergo` int(11) NOT NULL,
  `albergo` varchar(50) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `ID_bioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `alberghi`
--

INSERT INTO `alberghi` (`ID_Albergo`, `albergo`, `descrizione`, `ID_bioma`) VALUES
(1, 'Belvedere sul mare', '', 3),
(2, 'Bonifacio', '', 2),
(3, 'Belvedere', '', 5),
(4, 'Cristallo', '', 5),
(5, 'Alla stazione', '', 2),
(6, 'Le valli', '', 4),
(7, 'Tra mari e monti', '', 4),
(8, 'Le cime', '', 5),
(9, 'Mare blu', '', 3),
(10, 'Carlo Alberto', '', 2),
(11, 'La riva', '', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `biomi`
--

CREATE TABLE `biomi` (
  `ID_bioma` int(11) NOT NULL,
  `bioma` varchar(50) NOT NULL,
  `descrizione` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `biomi`
--

INSERT INTO `biomi` (`ID_bioma`, `bioma`, `descrizione`) VALUES
(1, 'undefined', ''),
(2, 'città', ''),
(3, 'mare', ''),
(4, 'pianura', ''),
(5, 'montagna', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `camere`
--

CREATE TABLE `camere` (
  `ID_albergo` int(11) NOT NULL,
  `ID_camera` int(11) NOT NULL,
  `numero` varchar(4) NOT NULL,
  `camera` varchar(10) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `numeroPosti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `camere`
--

INSERT INTO `camere` (`ID_albergo`, `ID_camera`, `numero`, `camera`, `descrizione`, `numeroPosti`) VALUES
(1, 1, '0001', 'Family', 'Camera per famiglie.', 5),
(1, 2, '0003', 'Joy', 'Camera per famiglie / giovani.', 2),
(9, 3, '0001', 'Sunrise', 'Camera vista mare.', 2),
(9, 4, '1003', 'Ricordi', 'Vecchio stile', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `log`
--

CREATE TABLE `log` (
  `ID_log` int(11) NOT NULL,
  `log` varchar(50) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `data` int(11) NOT NULL,
  `utente` varchar(50) NOT NULL,
  `nomePagina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `log`
--

INSERT INTO `log` (`ID_log`, `log`, `descrizione`, `data`, `utente`, `nomePagina`) VALUES
(1, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(2, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(3, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(4, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(5, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(6, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(7, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(8, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(9, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(10, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(11, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(12, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(13, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(14, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(15, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(16, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(17, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(18, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(19, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(20, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(21, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(22, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(23, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(24, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(25, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(26, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(27, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(28, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(29, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(30, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(31, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(32, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(33, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(34, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(35, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(36, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(37, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(38, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(39, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(40, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(41, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(42, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(43, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(44, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(45, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(46, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(47, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(48, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(49, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(50, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(51, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(52, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(53, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(54, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(55, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(56, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(57, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(58, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(59, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(60, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(61, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(62, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(63, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(64, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(65, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(66, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(67, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(68, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(69, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(70, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(71, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(72, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(73, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(74, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(75, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(76, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(77, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(78, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(79, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(80, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(81, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(82, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(83, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(84, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(85, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(86, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(87, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(88, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(89, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(90, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(91, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(92, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(93, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(94, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(95, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(96, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(97, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(98, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(99, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(100, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(101, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(102, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(103, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(104, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(105, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(106, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(107, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(108, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(109, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(110, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(111, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(112, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(113, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(114, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(115, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(116, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(117, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_Prenotazione.php'),
(118, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(119, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(120, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(121, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(122, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(123, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(124, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(125, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(126, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(127, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(128, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(129, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(130, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(131, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(132, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(133, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(134, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(135, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(136, '', 'Accesso pagina', 2025, 'Chiaretta', 'CreazioneUtente.php'),
(137, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(138, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(139, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(140, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(141, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(142, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(143, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(144, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(145, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(146, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(147, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(148, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(149, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(150, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(151, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(152, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(153, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(154, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(155, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(156, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(157, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(158, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(159, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(160, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(161, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(162, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(163, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(164, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(165, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(166, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(167, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(168, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(169, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(170, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(171, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(172, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(173, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(174, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(175, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(176, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(177, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(178, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(179, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(180, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(181, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(182, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(183, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(184, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(185, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(186, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(187, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(188, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(189, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(190, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(191, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(192, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(193, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(194, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(195, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(196, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(197, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(198, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(199, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(200, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(201, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(202, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(203, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(204, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(205, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(206, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(207, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(208, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(209, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(210, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(211, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(212, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(213, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(214, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(215, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(216, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(217, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(218, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(219, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(220, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(221, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(222, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(223, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(224, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(225, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(226, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(227, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(228, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(229, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(230, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(231, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(232, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(233, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(234, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(235, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(236, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(237, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(238, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(239, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(240, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(241, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(242, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(243, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(244, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(245, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(246, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(247, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(248, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(249, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(250, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(251, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(252, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(253, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(254, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(255, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(256, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(257, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(258, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(259, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(260, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(261, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(262, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(263, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(264, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(265, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(266, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(267, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(268, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(269, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(270, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(271, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(272, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(273, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(274, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(275, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(276, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(277, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(278, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(279, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(280, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(281, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(282, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(283, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(284, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(285, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(286, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(287, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(288, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(289, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(290, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(291, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(292, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(293, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(294, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(295, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(296, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(297, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(298, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(299, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(300, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(301, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(302, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(303, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(304, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(305, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(306, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(307, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(308, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(309, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(310, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(311, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(312, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(313, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(314, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(315, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(316, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(317, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(318, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(319, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(320, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(321, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(322, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(323, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(324, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(325, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(326, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(327, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(328, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(329, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(330, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(331, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(332, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(333, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(334, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(335, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(336, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(337, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(338, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(339, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(340, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(341, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(342, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(343, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(344, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(345, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(346, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(347, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(348, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(349, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(350, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(351, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(352, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(353, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(354, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(355, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(356, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(357, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(358, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(359, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(360, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(361, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(362, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(363, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(364, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(365, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(366, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(367, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(368, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(369, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(370, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(371, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(372, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(373, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(374, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(375, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(376, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(377, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(378, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(379, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(380, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(381, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(382, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(383, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(384, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(385, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(386, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(387, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(388, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(389, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(390, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(391, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(392, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(393, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(394, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(395, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(396, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(397, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(398, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(399, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(400, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(401, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(402, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(403, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(404, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(405, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(406, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(407, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(408, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(409, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(410, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(411, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(412, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(413, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(414, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(415, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(416, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(417, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(418, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(419, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(420, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(421, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(422, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(423, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(424, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(425, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(426, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(427, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(428, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(429, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(430, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(431, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(432, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(433, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(434, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(435, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(436, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(437, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(438, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(439, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(440, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(441, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(442, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(443, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(444, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(445, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(446, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(447, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(448, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(449, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(450, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(451, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(452, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(453, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(454, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(455, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(456, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(457, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(458, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(459, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(460, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(461, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(462, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(463, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(464, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(465, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(466, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(467, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(468, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(469, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(470, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(471, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(472, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(473, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(474, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(475, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(476, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(477, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(478, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(479, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(480, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(481, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(482, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(483, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(484, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(485, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(486, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(487, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(488, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(489, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(490, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(491, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(492, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(493, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(494, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(495, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(496, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(497, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(498, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(499, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(500, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(501, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(502, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(503, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(504, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(505, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(506, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(507, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(508, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(509, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(510, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(511, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(512, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(513, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(514, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(515, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(516, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(517, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(518, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(519, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(520, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(521, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(522, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(523, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(524, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(525, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(526, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(527, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(528, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(529, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(530, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(531, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(532, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(533, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(534, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(535, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(536, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(537, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(538, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(539, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(540, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(541, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(542, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(543, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(544, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(545, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(546, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(547, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(548, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(549, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(550, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(551, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(552, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(553, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(554, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(555, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(556, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(557, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(558, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(559, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(560, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(561, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(562, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(563, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(564, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(565, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(566, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(567, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(568, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(569, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(570, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(571, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(572, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(573, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(574, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(575, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(576, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(577, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(578, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(579, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(580, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(581, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(582, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(583, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(584, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(585, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(586, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(587, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(588, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(589, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(590, '', 'Accesso pagina', 2025, 'Chiaretta', 'info.php'),
(591, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(592, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(593, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(594, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(595, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(596, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(597, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(598, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(599, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(600, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(601, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(602, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(603, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(604, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(605, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(606, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(607, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(608, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(609, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(610, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(611, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(612, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(613, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(614, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(615, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(616, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(617, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(618, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(619, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(620, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(621, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(622, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(623, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(624, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(625, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(626, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(627, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(628, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(629, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(630, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(631, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(632, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(633, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(634, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(635, '', 'Accesso pagina', 2025, 'Chiaretta', 'index.php'),
(636, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(637, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase01_VerificaUtente.php'),
(638, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase02_PrenotazioneLocalità.php'),
(639, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase03_PrenotazioneAlbergo.php'),
(640, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase04_PrenotazioneCamera.php'),
(641, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase05_PrenotazioneConferma.php'),
(642, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase06_PrenotazioneUltimata.php'),
(643, '', 'Accesso pagina', 2025, 'Chiaretta', 'fase06_PrenotazioneUltimata.php');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `ID_utente` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ID_tipologiaUtente` int(11) NOT NULL,
  `utente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID_utente`, `email`, `password`, `ID_tipologiaUtente`, `utente`) VALUES
(1, '', '202cb962ac59075b964b07152d234b70', 0, 'Ricky'),
(3, '', '202cb962ac59075b964b07152d234b70', 0, 'Chiara'),
(4, '', '202cb962ac59075b964b07152d234b70', 0, 'Erika');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `alberghi`
--
ALTER TABLE `alberghi`
  ADD PRIMARY KEY (`ID_Albergo`),
  ADD KEY `fk_albergoBioma` (`ID_bioma`);

--
-- Indici per le tabelle `biomi`
--
ALTER TABLE `biomi`
  ADD PRIMARY KEY (`ID_bioma`),
  ADD UNIQUE KEY `bioma` (`bioma`);

--
-- Indici per le tabelle `camere`
--
ALTER TABLE `camere`
  ADD PRIMARY KEY (`ID_camera`),
  ADD UNIQUE KEY `camera` (`camera`);

--
-- Indici per le tabelle `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID_log`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID_utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `alberghi`
--
ALTER TABLE `alberghi`
  MODIFY `ID_Albergo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `biomi`
--
ALTER TABLE `biomi`
  MODIFY `ID_bioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT per la tabella `camere`
--
ALTER TABLE `camere`
  MODIFY `ID_camera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `log`
--
ALTER TABLE `log`
  MODIFY `ID_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID_utente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `alberghi`
--
ALTER TABLE `alberghi`
  ADD CONSTRAINT `fk_albergoBioma` FOREIGN KEY (`ID_bioma`) REFERENCES `biomi` (`ID_bioma`);

--
-- Limiti per la tabella `camere`
--
ALTER TABLE `camere`
  ADD CONSTRAINT `ID_albergo` FOREIGN KEY (`ID_albergo`) REFERENCES `alberghi` (`ID_Albergo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
