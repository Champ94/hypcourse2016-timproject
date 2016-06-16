-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.10.127.2:3306
-- Generato il: Giu 15, 2016 alle 13:59
-- Versione del server: 5.5.45
-- Versione PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timwebapp`
--
CREATE DATABASE IF NOT EXISTS `timwebapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `timwebapp`;

-- --------------------------------------------------------

--
-- Struttura della tabella `Assistance`
--

DROP TABLE IF EXISTS `Assistance`;
CREATE TABLE IF NOT EXISTS `Assistance` (
  `idAssistance` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaID` int(11) NOT NULL,
  `tipo_assistenzaID` int(11) NOT NULL,
  `titolo` varchar(45) NOT NULL,
  `descrizione` longtext NOT NULL,
  PRIMARY KEY (`idAssistance`),
  KEY `fk_categoria_idx` (`categoriaID`),
  KEY `fk_tipo_assistenza_idx` (`tipo_assistenzaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `Assistance`
--

INSERT INTO `Assistance` (`idAssistance`, `categoriaID`, `tipo_assistenzaID`, `titolo`, `descrizione`) VALUES
(1, 5, 1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi:<br><br>- richiederla online<br>- chiamare il Servizio Clienti linea fissa 187<br>- recarti presso un Negozio TIM.<br>Verifica la modalità di attivazione consultando on line le varie offerte disponibili.<br><br>I dati necessari sono:<br><br>- nome e cognome<br>- codice fiscale<br>- indirizzo dell''abitazione per cui richiedi l''installazione della linea<br>- un recapito telefonico di cellulare<br>- indirizzo email (facoltativo).<br>Il nostro personale tecnico ti contatterà quanto prima per concordare l’appuntamento per l’installazione dell’impianto telefonico.');

-- --------------------------------------------------------

--
-- Struttura della tabella `Ass_Dev`
--

DROP TABLE IF EXISTS `Ass_Dev`;
CREATE TABLE IF NOT EXISTS `Ass_Dev` (
  `idAss_Dev` int(11) NOT NULL AUTO_INCREMENT,
  `assistanceID` int(11) NOT NULL,
  `devicesID` int(11) NOT NULL,
  PRIMARY KEY (`idAss_Dev`),
  KEY `fkad_assistance_idx` (`assistanceID`),
  KEY `fkad_devices_idx` (`devicesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
CREATE TABLE IF NOT EXISTS `Categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `icona` mediumtext NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `Categoria`
--

INSERT INTO `Categoria` (`idCategoria`, `nome`, `icona`) VALUES
(1, 'Smartphone e Telefoni', ''),
(2, 'Tablet e Computer', ''),
(3, 'Modem e Networking', ''),
(4, 'TV e Smart Living', ''),
(5, 'Gestione linea e servizi', ''),
(6, 'Controllo costi e pagamenti', ''),
(7, 'Supporto tecnico e configurazi', ''),
(8, 'Contenuti e Smart Life', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `Colori`
--

DROP TABLE IF EXISTS `Colori`;
CREATE TABLE IF NOT EXISTS `Colori` (
  `idColori` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  `codice` varchar(6) NOT NULL,
  PRIMARY KEY (`idColori`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `Coloricol_UNIQUE` (`codice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `Colori`
--

INSERT INTO `Colori` (`idColori`, `nome`, `codice`) VALUES
(1, 'Bianco', '#FFFFF'),
(2, 'Nero', '#00000'),
(3, 'Oro', '#9F9F9'),
(4, 'Argernto Sidera', '#D2D2D'),
(5, 'Argento', '#E9DB9'),
(6, 'Oro Rosa', '#F9C6A');

-- --------------------------------------------------------

--
-- Struttura della tabella `Connessione`
--

DROP TABLE IF EXISTS `Connessione`;
CREATE TABLE IF NOT EXISTS `Connessione` (
  `idConnessione` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`idConnessione`),
  UNIQUE KEY `tipo_UNIQUE` (`tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `Connessione`
--

INSERT INTO `Connessione` (`idConnessione`, `tipo`) VALUES
(1, '3G'),
(2, '4G LTE'),
(3, '4G PLUS');

-- --------------------------------------------------------

--
-- Struttura della tabella `Devices`
--

DROP TABLE IF EXISTS `Devices`;
CREATE TABLE IF NOT EXISTS `Devices` (
  `idDevices` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaID` int(11) NOT NULL,
  `marcaID` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `prezzo_intero` decimal(6,2) DEFAULT NULL,
  `prezzo_rate` decimal(4,2) DEFAULT NULL,
  `prezzo_scontato` decimal(6,2) DEFAULT NULL,
  `n_rate` int(11) DEFAULT '0',
  `promo` tinyint(1) NOT NULL DEFAULT '0',
  `novita` tinyint(1) NOT NULL DEFAULT '0',
  `disponibile` tinyint(1) NOT NULL DEFAULT '0',
  `tipologiaID` int(11) NOT NULL,
  `sisopID` int(11) NOT NULL,
  `schermoID` int(11) NOT NULL,
  `connessioneID` int(11) NOT NULL,
  `caratteristiche` mediumtext,
  `descrizione` longtext,
  `inclusi` longtext,
  `specifiche` longtext NOT NULL,
  `memoriaID` int(11) NOT NULL,
  PRIMARY KEY (`idDevices`),
  KEY `fkd_marca_idx` (`marcaID`),
  KEY `fkd_tipologia_idx` (`tipologiaID`),
  KEY `fkd_sisop_idx` (`sisopID`),
  KEY `fkd_schermo_idx` (`schermoID`),
  KEY `fkd_categoria_idx` (`categoriaID`),
  KEY `fkd_connessione_idx` (`connessioneID`),
  KEY `fkd_memoria_idx` (`memoriaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `Devices`
--

INSERT INTO `Devices` (`idDevices`, `categoriaID`, `marcaID`, `nome`, `prezzo_intero`, `prezzo_rate`, `prezzo_scontato`, `n_rate`, `promo`, `novita`, `disponibile`, `tipologiaID`, `sisopID`, `schermoID`, `connessioneID`, `caratteristiche`, `descrizione`, `inclusi`, `specifiche`, `memoriaID`) VALUES
(1, 1, 1, 'Apple iPhone 6s', '789.90', '21.94', NULL, 36, 1, 0, 1, 1, 2, 4, 2, '- 4GPLUS<br>- Display Retina HD da 4,7"(diagonale) con risoluzione di 1334x750 px<br>- 3D Touch<br>- Chip A9 con coprocessore di movimento M9 integrato<br>- Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos<br>- iOS 9 e iCloud<br>', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro più resistente. Chip A9 con architettura a 64 bit di livello desktop. Nuova fotocamera iSight da 12MP con Live Photos. Touch ID. Connessioni Wi-Fi e 4G LTE più veloci.1 Batteria a lunga durata.2 E ancora, iOS 9 e iCloud. Il tutto in un elegante guscio unibody.', '- 22GB gratis per 30 giorni Internet 4G LTE!<br>- TIM Card con 5 euro di traffico prepagato incluso<br>- TIM Cloud - fino a 10 GB di spazio GRATIS e 1000 MMS inclusi', 'iOS 9 e iCloud<br>Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel<br>Chip A9 con coprocessore di movimento M9 integrato<br>Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Faq`
--

DROP TABLE IF EXISTS `Faq`;
CREATE TABLE IF NOT EXISTS `Faq` (
  `idFaq` int(11) NOT NULL AUTO_INCREMENT,
  `domanda` mediumtext NOT NULL,
  `risposta` longtext NOT NULL,
  `assistanceID` int(11) NOT NULL,
  PRIMARY KEY (`idFaq`),
  KEY `fk_assistance_idx` (`assistanceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `Faq`
--

INSERT INTO `Faq` (`idFaq`, `domanda`, `risposta`, `assistanceID`) VALUES
(1, 'Quali documenti sono necessari?', 'Dovrai fornire in visione i seguenti documenti:<br>- documento di identità del titolare linea (carta identità, patente di guida con foto, passaporto);<br>- codice fiscale del titolare linea;<br>- documentazione antiabusivismo, rappresentata da uno dei seguenti documenti:<br>- copia di una recente fattura (luce, gas, acqua) anche se intestata ad altri precedenti soggetti, occupanti la medesima unità immobiliare per la quale è stata fatta richiesta di collegamento telefonico<br>&nbsp;&nbsp;&nbsp;&nbsp;oppure<br>&nbsp;&nbsp;&nbsp;&nbsp;copia della concessione/licenza edilizia.<br>&nbsp;&nbsp;&nbsp;&nbsp;oppure<br>&nbsp;&nbsp;&nbsp;&nbsp;copia della domanda di concessione in sanatoria corredata della prova dell''avvenuto pagamento delle somme dovute a titolo di oblazione (così come previsto dal 2° comma dell''art.45 della legge 28.2.85 n.47).<br><b>Solo nel caso non fosse possibile</b> presentare uno qualsiasi dei documenti, potrai produrre in sostituzione una "<b>autodichiarazione sostitutiva di atto notorio</b>" autenticata dal notaio o dal segretario comunale come previsto dall''art.4 della legge 4.1.68 e successive modificazioni ed integrazioni.<br>', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Img_Dev`
--

DROP TABLE IF EXISTS `Img_Dev`;
CREATE TABLE IF NOT EXISTS `Img_Dev` (
  `idImg_Dev` int(11) NOT NULL AUTO_INCREMENT,
  `immaginiID` int(11) NOT NULL,
  `devicesID` int(11) NOT NULL,
  PRIMARY KEY (`idImg_Dev`),
  KEY `fkid_immagini_idx` (`immaginiID`),
  KEY `fkid_devices_idx` (`devicesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dump dei dati per la tabella `Img_Dev`
--

INSERT INTO `Img_Dev` (`idImg_Dev`, `immaginiID`, `devicesID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Immagini`
--

DROP TABLE IF EXISTS `Immagini`;
CREATE TABLE IF NOT EXISTS `Immagini` (
  `idImmagini` int(11) NOT NULL AUTO_INCREMENT,
  `percorso` text NOT NULL,
  `coloriID` int(11) NOT NULL,
  PRIMARY KEY (`idImmagini`),
  KEY `fki_colori_idx` (`coloriID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dump dei dati per la tabella `Immagini`
--

INSERT INTO `Immagini` (`idImmagini`, `percorso`, `coloriID`) VALUES
(1, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-1.jpg', 5),
(2, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-2.jpg', 5),
(3, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-3.jpg', 5),
(4, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-4.jpg', 5),
(5, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-1.jpg', 4),
(6, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-2.jpg', 4),
(7, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-3.jpg', 4),
(8, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-4.jpg', 4),
(9, 'data/s_t/iphone6s/oro/apple-iPhone6s_Gld-1.jpg', 3),
(10, 'data/s_t/iphone6s/oro/apple-iPhone6s_Gld-2.jpg', 3),
(11, 'data/s_t/iphone6s/oro/apple-iPhone6s_Gld-3.jpg', 3),
(12, 'data/s_t/iphone6s/oro/apple-iPhone6s_Gld-4.jpg', 3),
(13, 'data/s_t/iphone6s/oro_rosa/apple-iPhone6s_RsGld-1.jpg', 6),
(14, 'data/s_t/iphone6s/oro_rosa/apple-iPhone6s_RsGld-2.jpg', 6),
(15, 'data/s_t/iphone6s/oro_rosa/apple-iPhone6s_RsGld-3.jpg', 6),
(16, 'data/s_t/iphone6s/oro_rosa/apple-iPhone6s_RsGld-4.jpg', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `Marca`
--

DROP TABLE IF EXISTS `Marca`;
CREATE TABLE IF NOT EXISTS `Marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `Marca`
--

INSERT INTO `Marca` (`idMarca`, `nome`) VALUES
(1, 'Apple'),
(3, 'BlackBerry'),
(4, 'Huawei'),
(5, 'Nokia'),
(2, 'Samsung'),
(6, 'Sony');

-- --------------------------------------------------------

--
-- Struttura della tabella `Memoria`
--

DROP TABLE IF EXISTS `Memoria`;
CREATE TABLE IF NOT EXISTS `Memoria` (
  `idMemoria` int(11) NOT NULL AUTO_INCREMENT,
  `dimensione` varchar(10) NOT NULL,
  PRIMARY KEY (`idMemoria`),
  UNIQUE KEY `dimensione_UNIQUE` (`dimensione`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `Memoria`
--

INSERT INTO `Memoria` (`idMemoria`, `dimensione`) VALUES
(1, '16GB'),
(2, '32GB'),
(3, '64GB');

-- --------------------------------------------------------

--
-- Struttura della tabella `Schermo`
--

DROP TABLE IF EXISTS `Schermo`;
CREATE TABLE IF NOT EXISTS `Schermo` (
  `idSchermo` int(11) NOT NULL AUTO_INCREMENT,
  `dimensione` decimal(3,1) NOT NULL,
  PRIMARY KEY (`idSchermo`),
  UNIQUE KEY `dimensioni_UNIQUE` (`dimensione`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `Schermo`
--

INSERT INTO `Schermo` (`idSchermo`, `dimensione`) VALUES
(4, '4.7'),
(1, '8.0'),
(2, '9.7'),
(3, '10.0');

-- --------------------------------------------------------

--
-- Struttura della tabella `SisOp`
--

DROP TABLE IF EXISTS `SisOp`;
CREATE TABLE IF NOT EXISTS `SisOp` (
  `idSisOp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  PRIMARY KEY (`idSisOp`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `SisOp`
--

INSERT INTO `SisOp` (`idSisOp`, `nome`) VALUES
(1, 'Android'),
(2, 'iOS'),
(3, 'Windows');

-- --------------------------------------------------------

--
-- Struttura della tabella `SLS`
--

DROP TABLE IF EXISTS `SLS`;
CREATE TABLE IF NOT EXISTS `SLS` (
  `idSLS` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idSLS`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Sls_Dev`
--

DROP TABLE IF EXISTS `Sls_Dev`;
CREATE TABLE IF NOT EXISTS `Sls_Dev` (
  `idsls_dev` int(11) NOT NULL AUTO_INCREMENT,
  `slsID` int(11) NOT NULL,
  `devID` int(11) NOT NULL,
  PRIMARY KEY (`idsls_dev`),
  KEY `fksd_sls_idx` (`slsID`),
  KEY `fksd_devices_idx` (`devID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Tipologia`
--

DROP TABLE IF EXISTS `Tipologia`;
CREATE TABLE IF NOT EXISTS `Tipologia` (
  `idTipologia` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`idTipologia`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `Tipologia`
--

INSERT INTO `Tipologia` (`idTipologia`, `nome`) VALUES
(7, 'Chiavette'),
(9, 'Decoder'),
(5, 'iPad'),
(1, 'iPhone'),
(8, 'Modem'),
(10, 'Smart TV'),
(2, 'Smartphone'),
(6, 'Tablet'),
(3, 'Telefoni di Casa'),
(4, 'Telefonini'),
(11, 'Videocamere');

-- --------------------------------------------------------

--
-- Struttura della tabella `Tipo_assistenza`
--

DROP TABLE IF EXISTS `Tipo_assistenza`;
CREATE TABLE IF NOT EXISTS `Tipo_assistenza` (
  `idTipo_assistenza` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idTipo_assistenza`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dump dei dati per la tabella `Tipo_assistenza`
--

INSERT INTO `Tipo_assistenza` (`idTipo_assistenza`, `nome`) VALUES
(1, 'Fisso'),
(2, 'Mobile'),
(3, 'Cosa puoi fare online'),
(4, 'Smartphone e Tablet'),
(5, 'Linea Telefonica'),
(6, 'ADSL e Fibra'),
(7, 'Posta'),
(8, 'Decoder e TV'),
(9, 'Navigazione'),
(10, 'Sicurezza PC'),
(11, 'TIMgames'),
(12, 'TIMmusic'),
(13, 'TIMreading'),
(14, 'TIMvision');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Assistance`
--
ALTER TABLE `Assistance`
  ADD CONSTRAINT `fka_categoria` FOREIGN KEY (`categoriaID`) REFERENCES `Categoria` (`idCategoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fka_tipo_assistenza` FOREIGN KEY (`tipo_assistenzaID`) REFERENCES `Tipo_assistenza` (`idTipo_assistenza`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Ass_Dev`
--
ALTER TABLE `Ass_Dev`
  ADD CONSTRAINT `fkad_assistance` FOREIGN KEY (`assistanceID`) REFERENCES `Assistance` (`idAssistance`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkad_devices` FOREIGN KEY (`devicesID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Devices`
--
ALTER TABLE `Devices`
  ADD CONSTRAINT `fkd_categoria` FOREIGN KEY (`categoriaID`) REFERENCES `Categoria` (`idCategoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_connessione` FOREIGN KEY (`connessioneID`) REFERENCES `Connessione` (`idConnessione`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_marca` FOREIGN KEY (`marcaID`) REFERENCES `Marca` (`idMarca`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_memoria` FOREIGN KEY (`memoriaID`) REFERENCES `Memoria` (`idMemoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_schermo` FOREIGN KEY (`schermoID`) REFERENCES `Schermo` (`idSchermo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_sisop` FOREIGN KEY (`sisopID`) REFERENCES `SisOp` (`idSisOp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkd_tipologia` FOREIGN KEY (`tipologiaID`) REFERENCES `Tipologia` (`idTipologia`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Faq`
--
ALTER TABLE `Faq`
  ADD CONSTRAINT `fk_assistance` FOREIGN KEY (`assistanceID`) REFERENCES `Assistance` (`idAssistance`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Img_Dev`
--
ALTER TABLE `Img_Dev`
  ADD CONSTRAINT `fkid_immagini` FOREIGN KEY (`immaginiID`) REFERENCES `Immagini` (`idImmagini`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkid_devices` FOREIGN KEY (`devicesID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Immagini`
--
ALTER TABLE `Immagini`
  ADD CONSTRAINT `fki_colori` FOREIGN KEY (`coloriID`) REFERENCES `Colori` (`idColori`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Sls_Dev`
--
ALTER TABLE `Sls_Dev`
  ADD CONSTRAINT `fksd_sls` FOREIGN KEY (`slsID`) REFERENCES `SLS` (`idSLS`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fksd_devices` FOREIGN KEY (`devID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
