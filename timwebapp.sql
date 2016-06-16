-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.11.7.130:3306
-- Generato il: Giu 16, 2016 alle 22:46
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
  `nome` varchar(45) NOT NULL,
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
(7, 'Supporto tecnico e configurazione', ''),
(8, 'Contenuti e Smart Life', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `Colori`
--

DROP TABLE IF EXISTS `Colori`;
CREATE TABLE IF NOT EXISTS `Colori` (
  `idColori` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `codice` varchar(11) NOT NULL,
  PRIMARY KEY (`idColori`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `Coloricol_UNIQUE` (`codice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `Colori`
--

INSERT INTO `Colori` (`idColori`, `nome`, `codice`) VALUES
(1, 'Bianco', '#FFFFF'),
(2, 'Nero', '#00000'),
(3, 'Oro', '#9F9F9'),
(4, 'Argernto Siderale', '#D2D2D'),
(5, 'Argento', '#E9DB9'),
(6, 'Oro Rosa', '#F9C6A'),
(7, 'Oro Lime', '#F8EDA'),
(8, 'Oro Galaxy', '#EDE0A'),
(9, 'Blu', '#403E6'),
(10, 'nocolor', 'transparent'),
(11, 'Grigio', '#8E8C8C');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `Connessione`
--

INSERT INTO `Connessione` (`idConnessione`, `tipo`) VALUES
(1, '3G'),
(2, '4G LTE'),
(3, '4G PLUS'),
(4, 'nessuna');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `Devices`
--

INSERT INTO `Devices` (`idDevices`, `categoriaID`, `marcaID`, `nome`, `prezzo_intero`, `prezzo_rate`, `prezzo_scontato`, `n_rate`, `promo`, `novita`, `disponibile`, `tipologiaID`, `sisopID`, `schermoID`, `connessioneID`, `caratteristiche`, `descrizione`, `inclusi`, `specifiche`, `memoriaID`) VALUES
(1, 1, 1, 'Apple iPhone 6s', '789.90', '21.94', '0.00', 36, 1, 0, 1, 1, 2, 4, 2, '4GPLUS#Display Retina HD da 4,7"(diagonale) con risoluzione di 1334x750 px#3D Touch#Chip A9 con coprocessore di movimento M9 integrato#Fotocamera iSight da 12 megapixel con Focus Pixels# True Tone Flash e Live Photos#iOS 9 e iCloud', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro più resistente. Chip A9 con architettura a 64 bit di livello desktop. Nuova fotocamera iSight da 12MP con Live Photos. Touch ID. Connessioni Wi-Fi e 4G LTE più veloci.1 Batteria a lunga durata.2 E ancora, iOS 9 e iCloud. Il tutto in un elegante guscio unibody.', '22GB gratis per 30 giorni Internet 4G LTE!#TIM Card con 5 euro di traffico prepagato incluso#TIM Cloud - fino a 10 GB di spazio GRATIS e 1000 MMS inclusi', 'iOS 9 e iCloud#Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel#Chip A9 con coprocessore di movimento M9 integrato#Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos\n', 1),
(5, 1, 7, 'ZTE Blade A450', '79.90', '0.00', '0.00', 0, 0, 0, 1, 2, 2, 5, 2, 'Sistema Operativo Android 5.1#Display 5”#Processore DualCore 1.3 GHz#Fotocamera 8 Mpixel/Flash', NULL, 'TIM Card del valore di 5 € (IVA incl)#Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. L’unica card che ti permette di sfruttare tutte le potenzialità del tuo telefonino GSM e UMTS offrendoti i servizi più evoluti ed innovativi.#10GB gratis per 30 giorni!', 'Sistema Operativo Android 5.1#Display 5”#Processore DualCore 1.3 GHz#Connettivita	HSDPA21/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - Micro USB - Ricevitore GPS Integrato#Frequenze	850/900/1800/1900/2100#Display	5” 16 Milioni colori Touch#Fotocamera	8 Mpixel/Flash#Memoria	8GB - Slot Memory Card Micro SD fino a 32GB#Processore	DualCore 1.3 GHz#Multimedia	Video Recorder&Playback - MP3 Player - Radio FM#In dotazione:	Caricabatteria - Cavo Dati – Auricolare stereo - Guida di riferimento rapido#Dimensioni	143,5 x 71,8 x 8,6 mm#\nPeso	142 gr.#Autonomia: 	(*)Stand-by fino a 500 ore - Conversazione fino a 240 min#Note	* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne# lo stato delle batterie# la posizione geografica e il tipo di rete utilizzata.', 4),
(6, 1, 8, 'FACILE MAXI', '39.39', '3.33', '0.00', 12, 0, 0, 0, 3, 1, 7, 1, 'Ampio schermo#Tasti grandi retroilluminati#Tasto ECO mode plus per risparmio energetico', 'Il Cordless all''avanguardia, ma FACILE da usare#FACILE MAXI Ã¨ un cordless, pratico, funzionale ed elegante dalle ottime prestazioni.#Il suo display da 1,8" ad alto contrasto con caratteri grandi garantisce una leggibilitÃ  ottimale; la tastiera ampia con tasti ben distanziati e illuminati facilita la composizione dei numeri; l''audio Ã¨ chiaro e nitido, anche in vivavoce.#FACILE MAXI rispetta l''ambiente e consente un risparmio di energia del 60% rispetto a un cordless analogo di generazione precedente, il consumo della base in stand by Ã¨ inferiore a 0,7W.#Acquista il cordless FACILE MAXI direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', '', 'Ampio schermo#Telefono Cordless FACILE MAXI#Tasto ECO mode plus per risparmio energetico#Tipo di telefono	cordless#Raggio d''azione	fino a 300 metri in aria libera e 50 metri indoor#Tecnologia	DECT-GAP#Ricerca portatile (paging)	si#Display	da 1,8'''' grafico illuminato bianco, 96X64 px#Data e ora a display	si#Lingue disponibili	14 (inglese, tedesco, francese, spagnolo, russo, ecc.)#Suoneria	ampia scelta tra 20 suonerie di alta qualitÃ #CompatibilitÃ 	Compatibile con gli Apparecchi acustici (TIA 1083)#Visualizzazione durata conversazione	si#Visualizzazione numero chiamante	si, dopo aver attivato il Servizio CHI E''#Autonomia	fino a 16 in conversazione e 300 ore in standby#Vivavoce	si, di alta qualitÃ #Rubrica	150 numeri e nomi#Segreteria Telefonica	no#LED	no#Tastiera	numerica + tasti funzione su portatile#Tasti dedicati sulla tastiera	sul cordless: da navigatore tasto accesso rubrica, mute, tasto chiamata interna,,9 tasti di chiamata diretta#Ripetizione numeri	ultimi 10 numeri selezionati#Selezione Rapida	si, su 9 tasti#Tasto mute/attesa	si, sia mute che attesa#Chiamata Interna	si#Sicurezza	blocco tastiera (tasto cancelletto)#Batteria	Utilizzare batterie ricaricabili NI-MH di tipo AAA#Segnalazione batteria scarica	si#Segnalazione mancanza di collegamento radio	si#Collegamenti	no#Altre funzioni	tono tasti attivabile o disattivabile#FunzionalitÃ  ECO	sistema ad alta efficienza energetica, risparmio del 60%; consumo della base inferiore a 0,7W in standby - alimentatore a bassissimo consumo di corrente - controllo elettronico della carica delle batterie (ricaricabili) - ottimizzazione potenza impiegata in funzione della distanza base-portatile - con la funzione ECO abilitata, significativa riduzione del consumo (fino allâ€™80% in meno in stand-by e conversazione, copertura base/portatile 25/150 m)#Dimensioni	portatile: 157 x 51 x 27 mm - base: 122 x 104 x 32 mm#Peso	base: 198 g (alimentatore, presa e cavo di linea inclusi) - portatile: 96/120 g (senza/con batterie)', 5),
(8, 2, 9, 'Acer ICONIA W4 821', '299.90', '0.00', '0.00', 0, 0, 0, 0, 6, 3, 1, 4, 'Display 8â€ (1280x800) IPS#Sistema Operativo Windows 8.1 + Office Home & Students 2013', NULL, '20GB gratis per 30 giorni!#TIM Card del valore di 5 â‚¬ (IVA incl)', 'Connettivita HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.0 - Chiamata voce#Display 8" (1280x800) IPS#Video/Audio/Picture 5 Mpx A/F + 2 Mpx frontale, Lettore multimediale, MP3, WAV, 3GP, AAC, AAC+, e-AAC+, JPG, PNG,GIF, BMP, WMV, DivX/AVI#Memoria 32GB, 2GB RAM#Processore Intel Atom Quad-Core 1.8GHz#SistemaOperativo Windows 8.1 + Office Home & Students 2013#Applicazioni Office Home & Students 2013, E-mail, GPS/A-GPS, SMS/MMS Invio e ricezione#Dotazione Caricabatteria - Guida di riferimento rapido#Dimensioni 218.9 x 134.9 x 10.75 mm#Peso 420 grammi#Autonomia(*) 4960 mAh / durata 8h#Note * Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

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
(16, 16, 1),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 32, 6),
(22, 73, 8),
(23, 74, 8),
(24, 75, 8);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

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
(16, 'data/s_t/iphone6s/oro_rosa/apple-iPhone6s_RsGld-4.jpg', 6),
(17, 'data/s_t/bladea450/nero/ZTE_BLADE_01.jpg', 2),
(18, 'data/s_t/bladea450/nero/ZTE_BLADE_02.jpg', 2),
(19, 'data/s_t/bladea450/nero/ZTE_BLADE_03.jpg', 2),
(20, 'data/s_t/bladea450/bianco/sony-xperia-x-wht-front.jpg', 1),
(21, 'data/s_t/bladea450/bianco/sony-xperia-x-wht3_4sx.jpg', 1),
(22, 'data/s_t/bladea450/bianco/sony-xperia-x-wht-back.jpg', 1),
(23, 'data/s_t/bladea450/bianco/sony-xperia-x-wht-double.jpg', 1),
(24, 'data/s_t/bladea450/nero/sony-xperia-x-wht-double.jpg', 2),
(25, 'data/s_t/bladea450/nero/sony-xperia-x-grphblk-3_4sx_0.jpg', 2),
(26, 'data/s_t/bladea450/nero/sony-xperia-x-grphblk-back.jpg', 2),
(27, 'data/s_t/bladea450/nero/sony-xperia-x-grphblk-double.jpg', 2),
(28, 'data/s_t/bladea450/oro_lime/sony-xperia-x-limegld-front.jpg', 7),
(29, 'data/s_t/bladea450/oro_lime/sony-xperia-x-limegold-3_4sx.jpg', 7),
(30, 'data/s_t/bladea450/oro_lime/sony-xperia-x-limegld-back.jpg', 7),
(31, 'data/s_t/bladea450/oro_lime/sony-xperia-x-limegld-double.jpg', 7),
(32, 'data/s_t/facilemaxi/bianco/slider_cordless_facile_maxi_1.jpg', 1),
(33, 'data/s_t/g5/argento/LG_G5_silver_01_1.jpg', 5),
(34, 'data/s_t/g5/argento/LG_G5_silver_03.jpg', 5),
(35, 'data/s_t/g5/argento/LG_G5_silver_04.jpg', 5),
(36, 'data/s_t/g5/nero/LG_G5_titan_01_1.jpg', 2),
(37, 'data/s_t/g5/nero/LG_G5_titan_03.jpg', 2),
(38, 'data/s_t/g5/nero/LG_G5_titan_04.jpg', 2),
(39, 'data/s_t/galaxyj5/bianco/sgh-galaxy-j5_6-whtfront.jpg', 1),
(40, 'data/s_t/galaxyj5/bianco/sgh-galaxy-j5_6-wht3_4dx.jpg', 1),
(41, 'data/s_t/galaxyj5/bianco/sgh-galaxy-j5_6-whtback.jpg', 1),
(42, 'data/s_t/galaxyj5/nero/sgh-galaxy-j5_6-blkfront.jpg', 2),
(43, 'data/s_t/galaxyj5/nero/sgh-galaxy-j5_6-blk3_4dx.jpg', 2),
(44, 'data/s_t/galaxyj5/nero/sgh-galaxy-j5_6-blkback.jpg', 2),
(45, 'data/s_t/galaxyj5/oro_galaxy/sgh-galaxy-j5_6-goldfront.jpg', 8),
(46, 'data/s_t/galaxyj5/oro_galaxy/sgh-galaxy-j5_6-gold3_4dx.jpg', 8),
(47, 'data/s_t/galaxyj5/oro_galaxy/sgh-galaxy-j5_6-goldback.jpg', 8),
(48, 'data/s_t/k8/bianco/lg-k8-4g-indigowhite-01.jpg', 1),
(49, 'data/s_t/k8/bianco/lg-k8-4g-indigowhite-02.jpg', 1),
(50, 'data/s_t/k8/bianco/lg-k8-4g-indigowhite-03.jpg', 1),
(51, 'data/s_t/k8/blu/lg-k8-4g-indigoblue-01.jpg', 9),
(52, 'data/s_t/k8/blu/lg-k8-4g-indigoblue-02.jpg', 9),
(53, 'data/s_t/k8/blu/lg-k8-4g-indigoblue-03.jpg', 9),
(54, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-1_2.jpg', 1),
(55, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-2.jpg', 1),
(56, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-3_0.jpg', 1),
(57, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-4.jpg', 1),
(58, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-1_0.jpg', 2),
(59, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-2.jpg', 2),
(60, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-3.jpg', 2),
(61, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-4.jpg', 2),
(62, 'data/s_t/p9/argento/huawei-p9-silver-01.jpg', 5),
(63, 'data/s_t/p9/argento/huawei-p9-silver-02.jpg', 5),
(64, 'data/s_t/p9/argento/huawei-p9-silver-03.jpg', 5),
(65, 'data/s_t/p9/argento/huawei-p9-silver-04.jpg', 5),
(66, 'data/s_t/p9/grigio/huawei-p9-grey-01.jpg', 11),
(67, 'data/s_t/p9/grigio/huawei-p9-grey-02.jpg', 11),
(68, 'data/s_t/p9/grigio/huawei-p9-grey-03.jpg', 11),
(69, 'data/s_t/p9/grigio/huawei-p9-grey-04.jpg', 11),
(70, 'data/s_t/p9plus/nocolor/huawei-p9-plus-qrtzgry-front.jpg', 10),
(71, 'data/s_t/p9plus/nocolor/huawei-p9-plus-qrtzgry-3_4dx.jpg', 10),
(72, 'data/s_t/p9plus/nocolor/huawei-p9-plus-qrtzgry-back.jpg', 10),
(73, 'data/tablet/acericoniaw4821/neroacer-iconia-w4-grigio-1.jpg', 2),
(74, 'data/tablet/acericoniaw4821/neroacer-iconia-w4-grigio-2.jpg', 2),
(75, 'data/tablet/acericoniaw4821/neroacer-iconia-w4-grigio-3.jpg', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `Marca`
--

INSERT INTO `Marca` (`idMarca`, `nome`) VALUES
(9, 'Acer'),
(1, 'Apple'),
(3, 'BlackBerry'),
(4, 'Huawei'),
(5, 'Nokia'),
(2, 'Samsung'),
(6, 'Sony'),
(8, 'TIM'),
(7, 'ZTE');

-- --------------------------------------------------------

--
-- Struttura della tabella `Memoria`
--

DROP TABLE IF EXISTS `Memoria`;
CREATE TABLE IF NOT EXISTS `Memoria` (
  `idMemoria` int(11) NOT NULL AUTO_INCREMENT,
  `dimensione` varchar(15) NOT NULL,
  PRIMARY KEY (`idMemoria`),
  UNIQUE KEY `dimensione_UNIQUE` (`dimensione`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `Memoria`
--

INSERT INTO `Memoria` (`idMemoria`, `dimensione`) VALUES
(1, '16GB'),
(2, '32GB'),
(3, '64GB'),
(4, 'espandibile'),
(5, 'nessuna');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `Schermo`
--

INSERT INTO `Schermo` (`idSchermo`, `dimensione`) VALUES
(7, '1.8'),
(4, '4.7'),
(5, '5.0'),
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
