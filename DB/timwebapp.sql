-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.11.7.130:3306
-- Generato il: Lug 20, 2016 alle 10:07
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

CREATE TABLE IF NOT EXISTS `Assistance` (
  `idAssistance` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaID` int(11) NOT NULL,
  `tipo_assistenzaID` int(11) NOT NULL,
  `titolo` varchar(50) NOT NULL,
  `descrizione` longtext NOT NULL,
  PRIMARY KEY (`idAssistance`),
  KEY `fk_categoria_idx` (`categoriaID`),
  KEY `fk_tipo_assistenza_idx` (`tipo_assistenzaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dump dei dati per la tabella `Assistance`
--

INSERT INTO `Assistance` (`idAssistance`, `categoriaID`, `tipo_assistenzaID`, `titolo`, `descrizione`) VALUES
(1, 5, 1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi:<br><br>- richiederla online<br>- chiamare il Servizio Clienti linea fissa 187<br>- recarti presso un Negozio TIM.<br>Verifica la modalità di attivazione consultando on line le varie offerte disponibili.<br><br>I dati necessari sono:<br><br>- nome e cognome<br>- codice fiscale<br>- indirizzo dell''abitazione per cui richiedi l''installazione della linea<br>- un recapito telefonico di cellulare<br>- indirizzo email (facoltativo).<br>Il nostro personale tecnico ti contatterà quanto prima per concordare l’appuntamento per l’installazione dell’impianto telefonico.'),
(2, 5, 3, 'Acquisti e tempi di spedizione', 'Se acquisti online con carta di credito ricordati che la spedizione può avvenire solo sul territorio italiano, e all’importo dell’ordine non vengono aggiunte spese.##La merce acquistata sarà consegnata entro 8 giorni dal ricevimento dell’ordine, in base al giorno e all’ora in cui è stato effettuato l’ordine, secondo la seguente tempistica:#Ordine concluso prima delle ore 10.00 dal lunedì al venerdì: #- consegna al cliente nel terzo giorno lavorativo (sabato escluso) dalla conferma dell’ordine.#Ordine concluso dopo le ore 10.00 dal lunedì al venerdì:#- consegna al cliente nel quarto giorno lavorativo (sabato escluso) dalla conferma dell’ordine.#Ordine concluso Sabato Domenica o nei giorni festivi: #- consegna al cliente entro tre giorni lavorativi immediatamente utili.'),
(3, 5, 2, 'All''estero con TIM', 'Usare il telefonino all’estero è facilissimo!#Tutti i clienti TIM con una linea ricaricabile e con un abbonamento sono automaticamente abilitati a chiamare, ricevere telefonate, inviare e ricevere SMS dall’estero.#Ed è facile come in Italia!'),
(4, 5, 1, 'Trasloco', 'Il trasloco è un''operazione che ti consente di spostare la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa. Puoi gestirla direttamente online basta registrarsi all’Area Clienti.'),
(5, 5, 3, ' Scopri come ottenere la fattura dei tuoi acquisti', 'La fattura è disponibile per l’acquisto di prodotti, SIM Card, ricariche, canoni addebitati su carta di credito per offerte rateizzate e domiciliate e traffico roaming addebitato su carta di credito.\r\nLe modalità di emissione della fattura sono diverse a seconda dell''acquisto effettuato.'),
(7, 5, 2, 'Verifica il credito residuo mentre sei all''estero', 'Quando sei all’estero con la tua linea ricaricabile, puoi facilmente controllare il credito residuo.#Scopri come.'),
(8, 8, 11, 'Cos’è TIMgames', 'TIMgames è servizio TIM edicato al gaming che consente a tutti i clienti di scaricare su tablet e smartphone i migliori giochi on demand e in abbonamento per il mondo mobile.'),
(9, 8, 11, 'Come disattivare un abbonamento', 'la sezione dedicata alla disattivazione di un abbonamento'),
(10, 8, 12, 'Cos’è TIMmusic', 'TIMmusic è il servizio di streaming musicale di TIM che ti permette di ascoltare milioni di brani su Smartphone e Tablet SENZA CONSUMARE GIGA, o su PC.'),
(11, 8, 12, 'Tutti i modi per acquistare', 'Abbonarsi a TIMmusic è semplice e il traffico per lo streaming della musica non consuma i tuoi GB.\r\n\r\n'),
(12, 8, 13, 'Dove leggere', 'Per leggere i nostri eBook e Magazine devi disporre di un Adobe ID, ossia di una username e una password, con il quale Adobe® possa riconoscerti e assicurarsi che nessun altro oltre te possa leggere i contenuti che hai acquistato.##Vedi la pagina successiva di assistenza “Configurare l’Adobe ID”.'),
(13, 8, 13, 'App TIMreading', 'Con l’App TIMreading per Smartphone e Tablet puoi leggere eBook e Magazine (i Magazine solo da Tablet) protetti con DRM Adobe® ed acquistati dallo store TIMreading. Si scarica da Google Play ® o dall’AppStore ed è compatibile con Smartphone e Tablet con sistema operativo Android, dalla versione 2.4, e iOs, dalla versione 6.'),
(14, 8, 14, 'Cos''è TIMvision', 'TIMvision è la nuova risposta alle esigenze di intrattenimento per tutta la famiglia. E’ la TV on demand di TIM che tramite una connessione ADSL Illimitata o Fibra ti permette di godere di migliaia di titoli.'),
(15, 8, 14, 'Registrazione al servizio', 'La procedura di registrazione a TIMvision è necessaria per garantirti la sicurezza dell’acquisto e la visione gratuita dei titoli fino a 6 dispositivi.'),
(16, 7, 4, 'Assistenza tecnica specializzata con SOSsmartphone', 'Con il servizio di TIM SOSsmartphone  puoi ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del tuo smartphone o tablet.'),
(17, 7, 4, 'Buono sconto per cambio telefono', 'Con il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet. Ricevi subito uno sconto da utilizzare per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM.'),
(18, 7, 5, 'Memotel', 'Il servizio di segreteria telefonica Memotel di Telecom Italia ti consente, senza apparecchi aggiuntivi, di registrare fino a 15 messaggi per un tempo massimo di 90 secondi ciascuno e di ascoltarli anche fuori casa da telefoni fissi o cellulari tramite il codice PIN personale.'),
(19, 7, 5, 'Avviso di Chiamata', 'l servizio Avviso di Chiamata ti permette di sapere, attraverso un breve segnale acustico, se qualcuno ti sta chiamando mentre sei occupato in una conversazione.'),
(20, 7, 6, 'Prima installazione ', 'Se hai attivato l''offerta TIM SMART FIBRA con opzione autoinstallante, segui le indicazioni riportate nelle guide e nel video per il primo collegamento del modem Fibra di TIM e dei telefoni.  '),
(21, 7, 6, 'Modem fibra', ' modem Fibra di TIM permettono di gestire i servizi di fonia VoIP, dove presente tale offerta, e di collegare 2 telefoni alle porte Line1 e Line2}. Segui le indicazioni delle guide per verificare il corretto collegamento dei dispositivi, gestire la tua rete wi-fi e i collegamenti con periferiche esterne.'),
(22, 7, 7, 'Gestione Posta', 'Per consultare la tua casella di posta elettronica @tim.it o @alice.it accedi all''indirizzo https://mail.alice.it con qualsiasi collegamento ad Internet e qualsiasi browser ed inserisci il tuo indirizzo di posta elettronica e la relativa password.##Per accedere ai tuoi messaggi clicca su POSTA IN ARRIVO  nel menu in alto della tua webmail o dall’indicazione dei messaggi da leggere nella pagina principale di TIM Mail.'),
(23, 7, 7, 'Gestione Rubrica', 'La Rubrica  ti consente di avere a disposizione l''elenco dei tuoi contatti personali.#Per ogni contatto puoi memorizzare uno o più indirizzi di posta elettronica , i numeri di telefono fisso e mobile , pagine web, etc. '),
(24, 7, 8, 'Decoder TIMvision', 'Segui le indicazioni delle guide per collegare il decoder TIMvision'),
(25, 7, 8, 'TIMvision da TV - Errori', 'In questa sezione sono riportati gli errori più frequenti che è possibile riscontrare a video durante l''istallazione e la configurazione del decoder e la visione dei contenuti TIMvision.'),
(26, 7, 9, 'Configurazione DNS', 'Per navigare correttamente è necessario che i DNS siano configurati in maniera automatica sulla rete del tuo PC. #Scegli di seguito il Sistema Operativo che utilizzi e leggi le indicazioni per impostare correttamente i server DNS'),
(27, 7, 9, 'Configurazione browser', 'Consulta le guide di seguito per la configurazione del tuo programma di navigazione'),
(28, 7, 10, 'Requisiti minimi e Software supportati', 'Sezione dedicata ai requisiti minimi di sistema'),
(29, 7, 10, 'Installazione e aggiornamento del software', 'Per conoscere quale versione del software stai utilizzanndo clicca su ? e accedi alla sezione Informazioni sul sito.'),
(36, 6, 1, 'Come leggere la fattura della linea fissa', 'La fattura della linea fissa è semplice e facile da leggere perché disegnata prendendo spunto dai suggerimenti dei clienti. La veste grafica, moderna e raffinata, utilizza un linguaggio sempre più chiaro per l’esposizione delle voci di spesa, facilitando la lettura di tutte le informazioni di cui hai bisogno e garantendo maggiore trasparenza nei contenuti e negli importi.'),
(37, 6, 2, 'Verifica credito residuo e bonus disponibili ', 'Scopri come consultare le informazioni relative al credito residuo, alle offerte e ai bonus attivi sulla tua linea.'),
(38, 6, 3, 'MyTIM Fisso (controllo costi)', 'Registrandoti a MyTIM Fisso o scaricando l’Applicazione per smartphone e tablet avrai a disposizione tutte le informazioni relative alla tua linea di casa.##Potrai visualizzare i servizi e le offerte attive sulla tua linea telefonica, pagare le tue fatture e avere informazioni relative al traffico.');

-- --------------------------------------------------------

--
-- Struttura della tabella `Ass_Dev`
--

CREATE TABLE IF NOT EXISTS `Ass_Dev` (
  `idAss_Dev` int(11) NOT NULL AUTO_INCREMENT,
  `assistanceID` int(11) NOT NULL,
  `devicesID` int(11) NOT NULL,
  PRIMARY KEY (`idAss_Dev`),
  KEY `fkad_assistance_idx` (`assistanceID`),
  KEY `fkad_devices_idx` (`devicesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dump dei dati per la tabella `Ass_Dev`
--

INSERT INTO `Ass_Dev` (`idAss_Dev`, `assistanceID`, `devicesID`) VALUES
(1, 2, 1),
(2, 2, 29),
(3, 2, 30),
(4, 2, 31),
(5, 2, 42),
(6, 2, 12),
(7, 2, 33),
(8, 2, 34),
(9, 2, 35),
(10, 2, 37),
(11, 2, 45),
(12, 2, 47),
(13, 2, 14),
(14, 2, 15),
(15, 2, 32),
(16, 2, 44),
(17, 2, 10),
(18, 2, 5),
(19, 2, 6),
(20, 2, 18),
(21, 2, 20),
(22, 2, 21),
(23, 2, 22),
(24, 2, 25),
(25, 2, 40),
(26, 2, 49),
(27, 2, 8),
(28, 2, 9),
(29, 2, 11),
(30, 2, 13),
(31, 2, 19),
(32, 2, 24),
(33, 2, 23),
(34, 2, 26),
(35, 2, 27),
(36, 2, 28),
(37, 2, 38),
(38, 2, 39),
(39, 2, 41),
(40, 2, 43),
(41, 3, 1),
(42, 3, 5),
(43, 4, 6),
(44, 7, 9),
(45, 8, 10),
(46, 13, 11),
(47, 3, 12),
(48, 7, 13),
(49, 5, 14),
(50, 3, 15),
(51, 13, 8),
(52, 8, 28),
(53, 13, 29),
(54, 13, 30),
(55, 13, 31),
(56, 8, 32),
(57, 10, 33),
(58, 13, 34),
(59, 13, 35),
(60, 10, 37),
(61, 27, 18),
(62, 26, 19),
(63, 20, 20),
(64, 21, 21),
(65, 18, 22),
(66, 20, 23),
(67, 20, 24),
(68, 21, 25),
(69, 21, 26),
(70, 18, 27);

-- --------------------------------------------------------

--
-- Struttura della tabella `Categoria`
--

CREATE TABLE IF NOT EXISTS `Categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `icona` mediumtext NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dump dei dati per la tabella `Categoria`
--

INSERT INTO `Categoria` (`idCategoria`, `nome`, `icona`) VALUES
(1, 'Smartphone e Telefoni', 'img\\01_SmartphoneTelefoni_1.png'),
(2, 'Tablet e Computer', 'img\\02_TabletComputer.png'),
(3, 'Modem e Networking', 'img\\03_ModemChiavette.png'),
(4, 'TV e Smart Living', 'img\\04_TVDigitalHome.png'),
(5, 'Gestione linea e servizi', 'img\\01_Gestione_Linea_e_Servizi_v1.png'),
(6, 'Controllo costi e pagamenti', 'img\\02_CostiPagamenti_0.png'),
(7, 'Supporto tecnico e configurazione', 'img\\03_Configurazione.png'),
(8, 'Contenuti e Smart Life', 'img\\04_ConenutiDigitalLife.png'),
(9, 'TV & Entertainment', 'img\\01_Intrattenimento_0.png'),
(10, 'Salute e Benessere', 'img\\02_icona_salute_benessere.png'),
(11, 'Casa e Famiglia', 'img\\03_casa_famiglia_v2.png'),
(12, 'Servizi alla Persona', 'img\\04_ConenutiDigitalLife_0.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `Colori`
--

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
(1, 'Bianco', '#e4e4e4\n'),
(2, 'Nero', '#494949'),
(3, 'Oro', '#d7d0a7'),
(4, 'Argento Siderale', '#9D9D9D'),
(5, 'Argento', '#D1D1D1'),
(6, 'Oro Rosa', '#f5cebb'),
(7, 'Oro Lime', '#F8EDAB'),
(8, 'Oro Galaxy', '#EDE0AA'),
(9, 'Blu', '#403E68'),
(10, 'nocolor', 'transparent'),
(11, 'Grigio', '#8E8C8C');

-- --------------------------------------------------------

--
-- Struttura della tabella `Connessione`
--

CREATE TABLE IF NOT EXISTS `Connessione` (
  `idConnessione` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`idConnessione`),
  UNIQUE KEY `tipo_UNIQUE` (`tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `Connessione`
--

INSERT INTO `Connessione` (`idConnessione`, `tipo`) VALUES
(1, '3G'),
(2, '4G LTE'),
(3, '4G PLUS'),
(4, 'nessuna'),
(5, 'nessuno');

-- --------------------------------------------------------

--
-- Struttura della tabella `Devices`
--

CREATE TABLE IF NOT EXISTS `Devices` (
  `idDevices` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaID` int(11) NOT NULL,
  `marcaID` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
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
  PRIMARY KEY (`idDevices`),
  KEY `fkd_marca_idx` (`marcaID`),
  KEY `fkd_tipologia_idx` (`tipologiaID`),
  KEY `fkd_sisop_idx` (`sisopID`),
  KEY `fkd_schermo_idx` (`schermoID`),
  KEY `fkd_categoria_idx` (`categoriaID`),
  KEY `fkd_connessione_idx` (`connessioneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dump dei dati per la tabella `Devices`
--

INSERT INTO `Devices` (`idDevices`, `categoriaID`, `marcaID`, `nome`, `prezzo_intero`, `prezzo_rate`, `prezzo_scontato`, `n_rate`, `promo`, `novita`, `disponibile`, `tipologiaID`, `sisopID`, `schermoID`, `connessioneID`, `caratteristiche`, `descrizione`, `inclusi`, `specifiche`) VALUES
(1, 1, 1, 'Apple iPhone 6s', '789.90', '21.94', '0.00', 36, 0, 0, 1, 1, 2, 4, 2, '4GPLUS#Display Retina HD da 4,7"(diagonale) con risoluzione di 1334x750 px#3D Touch#Chip A9 con coprocessore di movimento M9 integrato#Fotocamera iSight da 12 megapixel con Focus Pixels# True Tone Flash e Live Photos#iOS 9 e iCloud', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro piu` resistente.#Chip A9 con architettura a 64 bit di livello desktop.#Nuova fotocamera iSight da 12MP con Live Photos.#Touch ID. Connessioni Wi-Fi e 4G LTE piu` veloci.#Batteria a lunga durata.#E ancora, iOS 9 e iCloud.#Il tutto in un elegante guscio unibody.', '22GB gratis per 30 giorni Internet 4G LTE!#TIM Card con 5 euro di traffico prepagato incluso#TIM Cloud - fino a 10 GB di spazio GRATIS e 1000 MMS inclusi', 'iOS 9 e iCloud#Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel#Chip A9 con coprocessore di movimento M9 integrato#Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos#Display   Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel3D Touch#Processore   Chip A9 con coprocessore di movimento M9 integrato#Fotocamera   Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos#Registrazione video   4K a 30 fps, moviola (1080p) a 120 fps#Videocamera   FaceTime HD con Retina Flash (foto da 5MP)#Sensori    Touch ID di seconda generazione#Connettivita   4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO#SistemaOperativo   iOS 9 e iCloud'),
(5, 1, 7, 'ZTE Blade A450', '79.90', '0.00', '0.00', 0, 0, 0, 1, 2, 1, 5, 2, 'Sistema Operativo Android 5.1#Display 5”#Processore DualCore 1.3 GHz#Fotocamera 8 Mpixel/Flash', NULL, 'TIM Card del valore di 5 € (IVA incl)#Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. L’unica card che ti permette di sfruttare tutte le potenzialità del tuo telefonino GSM e UMTS offrendoti i servizi più evoluti ed innovativi.#10GB gratis per 30 giorni!', 'Sistema Operativo Android 5.1#Display 5”#Processore DualCore 1.3 GHz#Connettivita	HSDPA21/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - Micro USB - Ricevitore GPS Integrato#Frequenze	850/900/1800/1900/2100#Display	5” 16 Milioni colori Touch#Fotocamera	8 Mpixel/Flash#Memoria	8GB - Slot Memory Card Micro SD fino a 32GB#Processore	DualCore 1.3 GHz#Multimedia	Video Recorder&Playback - MP3 Player - Radio FM#In dotazione:	Caricabatteria - Cavo Dati – Auricolare stereo - Guida di riferimento rapido#Dimensioni	143,5 x 71,8 x 8,6 mm#\nPeso	142 gr.#Autonomia: 	(*)Stand-by fino a 500 ore - Conversazione fino a 240 min#Note	* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne# lo stato delle batterie# la posizione geografica e il tipo di rete utilizzata.'),
(6, 1, 8, 'FACILE MAXI', '39.39', '3.33', '0.00', 12, 0, 0, 1, 3, 1, 7, 1, 'Ampio schermo#Tasti grandi retroilluminati#Tasto ECO mode plus per risparmio energetico', 'Il Cordless all''avanguardia, ma FACILE da usare#FACILE MAXI Ã¨ un cordless, pratico, funzionale ed elegante dalle ottime prestazioni.#Il suo display da 1,8" ad alto contrasto con caratteri grandi garantisce una leggibilitÃ  ottimale; la tastiera ampia con tasti ben distanziati e illuminati facilita la composizione dei numeri; l''audio Ã¨ chiaro e nitido, anche in vivavoce.#FACILE MAXI rispetta l''ambiente e consente un risparmio di energia del 60% rispetto a un cordless analogo di generazione precedente, il consumo della base in stand by Ã¨ inferiore a 0,7W.#Acquista il cordless FACILE MAXI direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', '', 'Ampio schermo#Telefono Cordless FACILE MAXI#Tasto ECO mode plus per risparmio energetico#Tipo di telefono	cordless#Raggio d''azione	fino a 300 metri in aria libera e 50 metri indoor#Tecnologia	DECT-GAP#Ricerca portatile (paging)	si#Display	da 1,8'''' grafico illuminato bianco, 96X64 px#Data e ora a display	si#Lingue disponibili	14 (inglese, tedesco, francese, spagnolo, russo, ecc.)#Suoneria	ampia scelta tra 20 suonerie di alta qualitÃ #CompatibilitÃ 	Compatibile con gli Apparecchi acustici (TIA 1083)#Visualizzazione durata conversazione	si#Visualizzazione numero chiamante	si, dopo aver attivato il Servizio CHI E''#Autonomia	fino a 16 in conversazione e 300 ore in standby#Vivavoce	si, di alta qualitÃ #Rubrica	150 numeri e nomi#Segreteria Telefonica	no#LED	no#Tastiera	numerica + tasti funzione su portatile#Tasti dedicati sulla tastiera	sul cordless: da navigatore tasto accesso rubrica, mute, tasto chiamata interna,,9 tasti di chiamata diretta#Ripetizione numeri	ultimi 10 numeri selezionati#Selezione Rapida	si, su 9 tasti#Tasto mute/attesa	si, sia mute che attesa#Chiamata Interna	si#Sicurezza	blocco tastiera (tasto cancelletto)#Batteria	Utilizzare batterie ricaricabili NI-MH di tipo AAA#Segnalazione batteria scarica	si#Segnalazione mancanza di collegamento radio	si#Collegamenti	no#Altre funzioni	tono tasti attivabile o disattivabile#FunzionalitÃ  ECO	sistema ad alta efficienza energetica, risparmio del 60%; consumo della base inferiore a 0,7W in standby - alimentatore a bassissimo consumo di corrente - controllo elettronico della carica delle batterie (ricaricabili) - ottimizzazione potenza impiegata in funzione della distanza base-portatile - con la funzione ECO abilitata, significativa riduzione del consumo (fino allâ€™80% in meno in stand-by e conversazione, copertura base/portatile 25/150 m)#Dimensioni	portatile: 157 x 51 x 27 mm - base: 122 x 104 x 32 mm#Peso	base: 198 g (alimentatore, presa e cavo di linea inclusi) - portatile: 96/120 g (senza/con batterie)'),
(8, 2, 9, 'Acer ICONIA W4 821', '299.90', '0.00', '0.00', 0, 0, 0, 1, 6, 3, 1, 4, 'Display 8"€ (1280x800) IPS#Sistema Operativo Windows 8.1 + Office Home & Students 2013', NULL, '20GB gratis per 30 giorni!#TIM Card del valore di 5 â‚¬ (IVA incl)', 'Connettivita HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.0 - Chiamata voce#Display 8" (1280x800) IPS#Video/Audio/Picture 5 Mpx A/F + 2 Mpx frontale, Lettore multimediale, MP3, WAV, 3GP, AAC, AAC+, e-AAC+, JPG, PNG,GIF, BMP, WMV, DivX/AVI#Memoria 32GB, 2GB RAM#Processore Intel Atom Quad-Core 1.8GHz#SistemaOperativo Windows 8.1 + Office Home & Students 2013#Applicazioni Office Home & Students 2013, E-mail, GPS/A-GPS, SMS/MMS Invio e ricezione#Dotazione Caricabatteria - Guida di riferimento rapido#Dimensioni 218.9 x 134.9 x 10.75 mm#Peso 420 grammi#Autonomia(*) 4960 mAh / durata 8h#Note * Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(9, 1, 10, 'Lumia 950', '599.90', '0.00', '499.90', 0, 1, 0, 1, 2, 3, 5, 3, '4GPLUS#Sistema Operativo Windows 10 Mobile#Display 5.2â€#Processore Snapdragonâ„¢ 808 HexaCore 1.8 Ghz - 4G  ', 'Funzionalità  di livello superiore, design eccellente e la migliore esperienza con Windows 10: scegli Lumia 950 e trasforma un momento qualsiasi in una grande conquista.', '22GB gratis per 30 giorni Internet 4G LTE!#TIM Card con 5 euro di traffico', 'Sistema Operativo Windows 10 Mobile#Display 5.2â€#Processore Snapdragonâ„¢ 808#HexaCore 1.8 Ghz  - 4G #Tecnologia	4G cat.6/HSDPA 42/UMTS/EDGE/GPRS#Frequenze 850/900/1800/1900#Connettivita	Wi-Fi - Bluetooth - Micro USB - NFC #GPS	Integrato#Display	5.2â€ 16#Milioni colori Touch#Fotocamera	20 Mpixel/Flash#Memoria Interna	32 GB#Slot Memory Card	Micro SD fino a 2TB#Processore	HexaCore 1.8 GHz#Formato SIM	Nano#Video	Video Recorder&Playback#Musica	MP3 Player#In dotazione	Caricabatteria standard - Auricolare stereo - Cavo Dati  USB Type C - Manuale dâ€™uso#Dimensioni	45x73,2x8,25 mm#Peso	150 grammi#Autonomia (*)	Stand-by fino a 275 ore - Conversazione fino a 1080 min.#Note	* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(10, 1, 6, 'Sony XPERIA X', '629.90', '0.00', '0.00', 0, 0, 0, 1, 2, 1, 5, 2, 'Sistema Operativo Android 6.0#Display HD 5"#Processore SnapdragonÂ® 650 HexaCore 1.8+1.4 Ghz#Fotocamera da 23 Mpxl Exmor, anteriore da 13 Mpxl', 'Il capolavoro##Uno smartphone dalle prestazioni inimitabili che integra una sensazionale fotocamera in grado di predire il prossimo movimento del soggetto..\r\nUna fotocamera senza rivali#Xperia X Performance integra la nuova fotocamera firmata Sony, piÃ¹ veloce e smart che mai. Tempi di risposta piÃ¹ rapidi, messa a fuoco piÃ¹ intelligente e rivoluzionaria velocitÃ  di otturazione adattiva: avrai tutto il necessario per scatti incredibilmente nitidi, in qualsiasi condizione. La messa a fuoco automatica ibrida intuitiva di Xperia X Performance utilizza le tecnologie delle fotocamere Sony e ti permette di cogliere qualsiasi movimento. Basta scegliere il soggetto da mettere a fuoco e la fotocamera lo seguirÃ  automaticamente, anche quando si muove. La messa a fuoco Ã¨ sempre chiara e il soggetto sempre nitido: non dovrai piÃ¹ preoccuparti di seguire la scena. Pensa a tutto il tuo smartphone.\r\nLa fotocamera da 23 MP che non teme i movimenti improvvisi#La nostra rapidissima fotocamera Ã¨ in grado di passare dallo standby allo scatto in meno di 0,6 secondi. Grazie all''incredibile rapiditÃ  di avvio, messa a fuoco automatica ibrida ed elaborazione dell''immagine, potrai cogliere i momenti piÃ¹ inattesi.###Un tocco di classe##Basta prendere Xperia X Performance in mano per accorgersi di quanto sia speciale: lasciati conquistare dal display curvo e dalla parte posteriore monoblocco in metallo. Scegli fra Nero grafite o Bianco per un esclusivo effetto satinato. Oppure le versioni Oro lime e Oro rosa per un tocco di eleganza. Xperia X Performance riflette i tuoi gusti e il tuo stile di vita. L''ultima versione del classico modello Sony Ã¨ caratterizzata da un design straordinariamente semplice, ancora piÃ¹ comodo grazie ai bordi ricurvi e al display da 5". E l''interfaccia utente non Ã¨ da meno, con un look sempre piÃ¹ personalizzato e un approccio piÃ¹ intuitivo.\r\nInarrestabile potenza#Xperia X Performance Ã¨ dotato di un rapidissimo processore Snapdragon 820 e di velocitÃ  di connessione Cat91 per prestazioni senza rivali. Preparati a restare a bocca aperta.###Streaming alla velocitÃ  della luce##ConnettivitÃ  ultra rapida per un intrattenimento ininterrotto. Vuoi guardare un film in streaming su Netflix o scaricare il tuo podcast preferito? DÃ¬ addio ai tempi di attesa. Grazie all''ultimo processore Snapdragon 820 e a una connettivitÃ  senza rivali, Xperia X Performance ti permette di accedere ai contenuti multimediali desiderati in un batter d''occhio e con estrema facilitÃ , senza buffering o ritardi.', '22GB gratis per 30 giorni Internet 4G LTE!#TIM Card del valore di 5 â‚¬ (IVA incl)', 'Sistema Operativo Android 6.0#Processore SnapdragonÂ® 650 HexaCore 1.8 Ghz + 1.4 Ghz#Tecnologia	Abilitato tecnologia 4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900#Connettivita	Wi-Fi - Bluetooth - Micro USB - NFC#GPS	Integrato#Display	Full HD da 5â€ 1080p, Display TRILUMINOS#Fotocamera	Posteriore da 23 Mpixel Exmor, Anteriore da 13 Mpxl#Memoria	Interna 3GB - Slot Memory Card Micro SD fino a 200GB#Processore	Processore QualcommÂ® Snapdragonâ„¢ 650 Hexa-Core (1.8 GHz + 1.4 GHz)#Video	Video Recorder&Playback#Musica	MP3 Player - Radio FM#In dotazione	Auricolare stereo - Caricabatteria - Cavo dati - Guida di riferimento rapido#Dimensioni	143,7 x 70,5 x 8,6 mm#Peso	165 grammi#Autonomia	Stand-by fino a 779 ore - Conversazione fino a 790 min'),
(11, 1, 11, 'LG G5', '699.90', '0.00', '0.00', 0, 0, 0, 1, 2, 1, 5, 2, 'Sistema Operativo Android 6.0#Display 5.3â€#Processore Snapdragonâ„¢ 820 QuadCore 2.15 GHz - 4G LTE', 'LG G5##Il nuovo LG G5 Ã¨ uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un''esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura piÃ¹ di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perchÃ© il nuovo display IPS Quantum Ã¨ piÃ¹ ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non Ã¨ attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.###COMPLETAMENTE IN METALLO##Bellezza e raffinatezza nel palmo della tua mano. Cerchi da sempre la cura nei dettagli e l''eleganza dei materiali, ed eccoli qui. Il metallo e il vetro si uniscono morbidamente in una forma semplicemente iconica. Che ti dÃ  sensazioni tutte da provare.###DESIGN MODULARE##Liberati dalle convenzioni. Il nuovo design modulare con batteria a slitta ti permettere di avere tutto quello che gli altri non hanno mai saputo darti. La libertÃ  di avere uno smartphone in metallo e di poter cambiare la batteria quando desideri. E di espandere le funzioni con nuovi moduli.###DOPPIA FOTOCAMERA CON LENTI GRANDANGOLARI##Cattura tutto ciÃ² che vedi! I nostri occhi vedono piÃ¹ di quanto una fotocamera convenzionale riesca a catturare. Ma con LG G5 puoi fare anche di piÃ¹, perchÃ© ha due fotocamere. Con la prima cogli tutti i dettagli. Con la lente grandangolare a 135Â° della seconda, invece, catturi perfino piÃ¹ di quanto vedono i tuoi occhi. Grattacieli, un concerto o l''intera spiaggia dove ti trovi vivranno nitidi sul tuo nuovo G5###LUMINOSITÃ€ ESTREMA##Ecco uno schermo davvero intelligente. Che riconosce quando sei sotto la luce diretta del sole per offrirti una leggibilitÃ  sempre ottimale. Il nuovo display IPS Quantum Ã¨ piÃ¹ luminoso, piÃ¹ colorato e piÃ¹ chiaro anche in pieno sole.', '#22GB gratis di Internet 4G per 30 giorni\r\n#Scopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE.Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilitÃ  rapidamente, con fluiditÃ  e prestazioni affidabili.\r\n##TIM Card del valore di 5â‚¬ (IVA incl)\r\n#Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. Lâ€™unica card che ti permette di sfruttare tutte le potenzialitÃ  del tuo telefonino GSM e UMTS offrendoti i servizi piÃ¹ evoluti ed innovativi.', 'Sistema Operativo Android 6.0#Display 5.3â€#Processore Snapdragonâ„¢ 820 QuadCore 2.15 GHz - 4G LTE#Tecnologia	4G cat.6/HSDPA42/UMTS/EDGE/GPRS	Frequenze 850/900/1800/1900/2100#Connettivita	Wi-Fi - Bluetooth â€“ Infrarosso - USB tipo C â€“ NFC#GPS	Integrato#Display	5.3â€ 16 Milioni colori Touch#Fotocamera 	2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx#Memoria Interna	32GB	Slot Memory Card Micro SD fino a 2TB#Processore	Processore Snapdragonâ„¢ 820 QuadCore 2.15 GHz - 4G LTE#Formato SIM	Nano#Video	Video Recorder&Playback#Musica	MP3 Player#In dotazione	Caricabatteria	Cavo dati USB tipo C	Auricolare stereo	Manuale dâ€™uso rapido#Dimensioni	149,4x73,9x7,3 mmPeso	159 gr.#Autonomia(*)	Stand-by fino a 100 ore - ?Conversazione fino a 240 min.##Note	* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(12, 1, 2, 'Samsung Galaxy J5', '269.90', '0.00', '229.90', 0, 1, 0, 1, 2, 1, 5, 2, 'Sistema Operativo Android 5.1#Display 5.2â€ 16 Milioni colori Touch#Processore QuadCore 1.2 Ghz', '', '22GB gratis di Internet 4G per 30 giorni#Scopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE. Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilitÃ  rapidamente, con fluiditÃ  e prestazioni affidabili.##TIM Card del valore di 5 â‚¬ (IVA incl)#Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. Lâ€™unica card che ti permette di sfruttare tutte le potenzialitÃ  del tuo telefonino GSM e UMTS offrendoti i servizi piÃ¹ evoluti ed innovativi.', 'Sistema Operativo Android 5.1#Display 5â€ 16 Milioni colori Touchâ€#Processore QuadCore 2.1 Ghz#Tecnologia	4G/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100#Connettivita	Wi-Fi - Bluetooth - Micro USB - NFC#GPS	Ricevitore GPS Integrato#Display	Display 5.2â€ 16 Milioni colori Touch#Fotocamera	Fotocamera 13 Mpixel/Flash#Memoria	Memoria interna 16GB - Slot Memory Card Micro SD fino a 128GB#Processore	Processore QuadCore 1.2 Ghz#Formato SIM	SIM Micro#Video	Video Recorder&Playback#Musica	MP3 Player - Radio FM#In dotazione	Caricabatteria - Cavo dati - Auricolare - Manuale dâ€™uso rapido#Dimensioni	145,8x72,3x8,1 mm#Peso	158 gr##Note	* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(13, 1, 11, 'LG K8', '179.90', '0.00', '0.00', 0, 0, 0, 1, 2, 1, 5, 2, '4G LTE - NFC#Sistema Operativo Android 6#Display 5â€#Processore QuadCore 1.3 GHz', 'SCEGLI IL TUO STILE##La nuova serie K di LG ti offre una gamma di smartphone che rispecchiano la tua personalitÃ . LG K8 ti accompagna nei tuoi viaggi e ti sorprenderÃ  con selfie dettagliati tutti da condividere con la velocitÃ  della rete 4G LTE###DESIGN CON VETRO SMUSSATO##Datti un tono! LG K8 ha un design che lascia a bocca aperta grazie al profilo del vetro smussato e alla forma arrotondata. In piÃ¹ Ã¨ piÃ¹ ergonomico e garantisce una presa piÃ¹ salda grazie alla lavorazione della cover posteriore.###FOTOCAMERA E FLASH VIRTUALE##Cattura i le situazioni piÃ¹ divertenti della giornata con la fotocamera da 8 Megapixel. E'' sufficiente un tocco sul display e K8 mette a fuoco e scatta immediatamente. Anche per i selfie puoi contare sulla fotocamera frontale da 5 Megapixel con la funzione flash virtuale che illumina il tuo volto, cosÃ¬ i tuoi selfie saranno illuminati come si deve, mentre tutti gli altri... scatteranno selfie scuri!###DISPLAY DA 5"##Guarda le tue foto e i tuoi video sul display ampio da ben 5".', '22GB gratis di Internet 4G per 30 giorni#Scopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE.Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilitÃ  rapidamente, con fluiditÃ  e prestazioni affidabili.##TIM Card del valore di 5 â‚¬ (IVA incl)#Solo TIM ti regala la SIM-Plus di TIM con 128 Kbyte di memoria. Lâ€™unica card che ti permette di sfruttare tutte le potenzialitÃ  del tuo telefonino GSM e UMTS offrendoti i servizi piÃ¹ evoluti ed innovativi.', '4G LTE - NFC#Sistema Operativo Android 6#Display 5â€#Processore QuadCore 1.3 GHz#Tecnologia	4G cat.4/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100#Connettivita	Wi-Fi - Bluetooth - Micro USB - NFC#GPS	Integrato#Display	5â€ 16 Milioni colori Touch#Fotocamera	Posteriore da 8 Mpxl con flash#Memoria Interna	8GB con Slot Memory Card Micro SD fino a 32GB#Processore	Processore QuadCore 1.3 GHz#Formato SIM	Nano-sim#Audio e Video	Video Recorder&Playback - MP3 Player - Radio FM#In dotazione	Caricabatteria, Cavo dati USB, Manuale dâ€™uso rapido, Auricolare stereo#Dimensioni	144,6x71,5x8,7 mm#Peso	142 gr.#Autonomia(*)	Stand-by fino a 100 ore - ?Conversazione fino a 240 min.'),
(14, 1, 4, 'Huawei P9', '599.90', '0.00', '0.00', 0, 0, 1, 1, 2, 1, 5, 2, 'Sistema Operativo Android 6.0#Display IPS Full HD da 5.2â€™â€™#Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl#Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'PREMIUM. ELEGANT. STYLISH.##Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola dâ€™arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed Ã¨ disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.###DISPLAY LUMINOSO E DAI COLORI INTENSI##Con una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora piÃ¹ naturali.###UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA##La collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminositÃ  e nitidezza per foto e video sensazionali.###INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA##Huawei P9 Ã¨ in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantitÃ  di luce, combinando al meglio la qualitÃ  del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', '22GB gratis per 30 giorni Internet 4G LTE!##TIM Card del valore di 5 â‚¬ (IVA incl)##HUAWEI VIP SERVICE', 'Sistema Operativo Android 6.0#Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)#Display IPS Full HD da 5.2â€™â€™#Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl#Tecnologia	Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz#Connettivita	4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC#GPS	GPS Integrato#Display	Display IPS Full HD da 5.2â€™â€™#Fotocamera	Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4#Memoria Interna	32GB#Processore	Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)#In dotazione	Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida#Dimensioni	145 x 70,9 x 6,95 mm#Peso	144 grammi#Autonomia	Stand-by fino a 566 ore - Conversazione fino a 1980 min'),
(15, 1, 4, 'Huawei P9 Plus', '749.90', '0.00', '0.00', 0, 0, 0, 1, 2, 1, 5, 2, 'Sistema Operativo Android 6.0#Display Full HD Amoled da 5.5â€™â€™#Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl#Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'DESIGN ELEGANTE, CURA NEI DETTAGLI##Lâ€™esperienza di Huawei P9 si eleva ad un livello superiore con Huawei P9 Plus grazie al luminoso display da 5.5â€ e lâ€™elegante corpo in metallo###REINVENT SMARTPHONE PHOTOGRAPHY##Grazie al perfetto connubio tra hardware e software di classe superiore della doppia fotocamera Leica, P9 Plus consente di catturare immagini di assoluta qualitÃ  senza rinunciare al design compatto ed elegante.###UN INNOVATIVO SISTEMA A DOPPIA FOTOCAMERA##P9 Plus Ã¨ in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di P9 Plus consente di catturare una maggiore quantitÃ  di luce, combinando al meglio la qualitÃ  del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.La doppia fotocamera da 12MP con pixel da 1,25Âµm ottimizza gli scatti in condizioni di scarsa illuminazione, mentre la tecnologia IMAGEsmart 5.0 di P9 Plus garantisce la massima qualitÃ  di immagine in ogni circostanza.Lâ€™algoritmo sviluppato in collaborazione con Leica assicura una qualitÃ  di immagine propria di una macchina fotografica, anche in condizioni di scarsa illuminazione.###UN DISPLAY FULL HD DA 5,5", PIÃ™ AMPIO E PIÃ™ LUMINOSO##Grazie alla tecnologia AMOLED, lâ€™ampio display Full HD da 5,5" offre una maggiore saturazione del colore e un contrasto piÃ¹ elevato, per unâ€™esperienza visiva sempre piÃ¹ intensa.###MAGGIORE AUTONOMIA E RICARICA RAPIDA##La batteria da 3400mAh con di ricarica rapida garantisce unâ€™autonomia piÃ¹ elevata.###AVANZATA TECNOLOGIA â€˜PRESS TOUCHâ€™##P9 Plus Ã¨ dotato dellâ€™innovativa tecnologia â€˜Press Touchâ€™, basata sul riconoscimento della pressione effettuata sul display.La nuova e ottimizzata tecnologia â€˜Press Touchâ€™ rileva le piÃ¹ impercettibili variazioni di pressione sullo schermo garantendo la massima interattivitÃ  e reattivitÃ  dello smartphone.Visualizza le anteprime delle immagini, ingrandiscine i dettagli, ed accedi rapidamente alle applicazioni con il menu di scelta rapida a comparsa.', '22GB gratis per 30 giorni Internet 4G LTE!##TIM Card del valore di 5 â‚¬ (IVA incl)##HUAWEI VIP SERVICE', 'Sistema Operativo Android 6.0#Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)#Display Full HD Amoled da 5.5â€™â€™#Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl#Connettivita	4G cat.6/HSPA+/EDGE/GPRS Frequenze 850/900/1800/1900Wi-Fi 802.11 a/b/g/n/ac Wi-Fi Direct, Bluetooth 4.2, NFC, Sensore d''impronta, Infrarosso#GPS	GPS Integrato, A-GPS, Glonass, BDS#Display	Display Full HD Amoled da 5.5â€™â€™â€™#Fotocamera	Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl#Memoria Interna	64GB, Micro SD fino a 128 GB#Processore	Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)#In dotazione	Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida#Dimensioni	152.3 x 75.3 x 6.98 mm#Peso	162 grammi'),
(18, 3, 8, 'Chiavetta TIM 42.2', '29.90', '0.00', '0.00', 0, 0, 0, 1, 8, 4, 8, 4, '1 Chiavetta 3G Wi-Fi#1 mese di INTERNET fino a 42 MEGA', 'La Chiavetta TIM 42.2 Ã¨ un modem usb dalle prestazioni superiori, con tecnologia HSPA+, dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed Ã¨ compatibile con, VISTA, Windows 7, Windows 8.1, Mac OS X', '2GB gratis per 30 giorni!##TIM Card del valore di 5â‚¬ (IVA incl)', 'Tecnologia	HSPA+/HSDPA/HSUPA/UMTS/EDGE/GPRS#Frequenze	DC-HSPA+/HSPA+/HSUPA/HSDPA/UMTS UMTS900/2100MHz EGPRS/GSM 850/900/1800/1900MHz#Dimensioni	25x86x9 mm#Peso	22 grammi#Requisiti di sistema	Windows XP(32 bit), Vista (32/64 bit), Windows7 (32/64-bit), Windows 8.1 (32/64 bit) ModalitÃ  Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x#In dotazione	Guida Rapida - TIM Card con 5â‚¬ (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5â‚¬ non viene applicato. La TIM Card non Ã¨ inclusa nel package TIM Business. Il prodotto non puÃ² essere venduto separatamente dalla TIM Card'),
(19, 3, 15, 'FRITZ!WLAN Repeater ', '89.90', '2.50', '0.00', 36, 0, 0, 1, 8, 4, 8, 4, 'Estende la portata wireless fino a 1750 Mbit/s#WPS: lo installi premendo un pulsante#Compatibile con i modem Wi-Fi di TIM#Porta LAN Gigabit#5 anni di garanzia', 'PiÃ¹ rete wireless nel giro di secondi##Con il nuovo FRITZ!WLAN Repeater 1750E si estende la portata delle reti wireless esistenti, creando connessioni veloci e stabili che arrivano a 1300 Mbit/s con lo standard AC sulla banda di frequenza da 5 GHz e a 450 Mbit/s con lo standard N su quella da 2,4 GHz.###Per installarlo basta premere un pulsante##I FRITZ!WLAN Repeater 1750E supportano la facile registrazione automatica con il cosiddetto metodo WPS come i router TIM, come il FRITZ!Box o la maggior parte dei router in commercio. Per la configurazione basta premere un pulsante: i ripetitori e i router WPS come il FRITZ!Box si collegano quindi automaticamente.###LibertÃ  senza fili##Con la sua porta Gigabit LAN, questo ripetitore integra nella rete domestica perfino i dispositivi di rete senza funzione wireless. Il FRITZ!WLAN Repeater 1750E copre via radio la distanza fino al router senza richiedere i cavi anteriormente necessari. E se giÃ  esistono cavi, in alternativa si puÃ² collegare al router nella modalitÃ  "ponte LAN" con un cavo di rete. In questo modo, nemmeno le distanze considerevoli rappresentano piÃ¹ alcun problema.####PiÃ¹ portata wireless in un baleno##Il FRITZ!WLAN Repeater 1750E estendendo efficientemente la portata delle reti wireless esistenti Ã¨ la soluzione ideale per disporre di una rete wireless piÃ¹ ampia in tutta la casa. Con la selezione intelligente della banda a 2.4 GHz o 5GHz (Cross Band Repeating dinamica), il 1750E sceglie sempre il percorso piÃ¹ efficiente. Il ripetitore Ã¨ adatto al funzionamento con normali prese di corrente da 230 V. I cinque LED dell''intensitÃ  di campo ti aiutano a collocarlo rapidamente nella posizione ideale della casa.#aumenta la portata wireless sulla banda da 5 GHz a 1300 Mbit/s#aumenta la portata wireless sulla banda da 2,4 GHz a 450 Mbit/s###Wireless dual AC + N#porta LAN Gigabit#connessioni sicure con WPA2 e configurazione rapida grazie a WPS###Sicurezza anche per il futuro grazie a IPv6##Il FRITZ!WLAN Repeater 1750E supporta la codifica sicura WPA2 e in alternativa puÃ² usare anche lo standard WPA. Per questo motivo, Ã¨ adatto a molte reti wireless e a tutti i tipi di codifiche. Supporta inoltre anche il nuovo protocollo IPv6, che rende notevolmente piÃ¹ semplici molte nuove applicazioni.###FacilitÃ  d''uso e aggiornamenti gratuiti##Quando cerchi la posizione ideale e il canale wireless ottimale, questo ripetitore ti aiuta a trovarli con i LED, gli assistenti software e una pratica interfaccia utente che si apre a partire da smartphone, tablet e computer . Inoltre, il FRITZ!WLAN Repeater 1750E approfitta di sempre nuove funzioni grazie agli aggiornamenti gratuiti.###Assistenza##Il prodotto Ã¨ corredato di 5 anni di garanzia i due anni per legge forniti da TIM gli altri 3 forniti da AVM rivolgendosi al loro servizio clienti:#chiamando il numero +39 06 893 860 25 da Lunedi a VenerdÃ¬ dalle 11 alle 17#contattando vi mail assistenza@avm.de#online sul sito assistenza di AVM', '', 'Supporto reti Wi-Fi, fino a 1750 Mbps a 2.4 e 5 GHz (dual band, simultanee)#Compatibile con tutti i modem Wi-Fi (anche mobile)#Facile da installare con WPS, sicuro grazie alla codifica WPA2#Porta LAN Gigabit, modalitÃ  Repeater o Access Point#5 anni di garanzia#Standard Wi-Fi e velocitÃ 	802.11ac (1.300 Mbit/s), 802.11n (450 Mbit/s), 802.11g/a (54 Mbit/s) e 802.11b (11 Mbit/s)#Sicurezza Wi-Fi	WPA2, WPA, WPS#Caratteristiche operative	Assistente per browser e software per semplificare la configurazione#Dimensioni	(L x H x P): circa 76,5 x 155 x 62,6 mm#Peso	151 g circa#Contenuto della confezione	Wireless Range Extender,Cavo Ethernet,Guida rapida'),
(20, 3, 8, 'Modem ADSL Wi-Fi', '69.00', '0.00', '0.00', 0, 0, 0, 1, 8, 4, 8, 4, 'Navigazione senza fili piÃ¹ veloce#Connessione di vari dispositivi#Installazione no problem#Funzione Eco per risparmio energetico', 'Navigazione veloce e senza fili##Con il Modem ADSL Wi-Fi navighi ad alta velocitÃ  e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.#Navigazione piÃ¹ veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione(1).##Protezione: la cifratura WPA e WPA2 impedisce lâ€™accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalitÃ  avanzate come il filtro degli indirizzi MAC ed il firewall integrato.##Tutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.##Installazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.##Risparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalitÃ , consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo (2).##Il Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed Ã¨ compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).##Acquista il Modem ADSL Wi-Fi direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.###Note#(1) La tecnologia Wi-Fi 802.11n migliora le prestazioni rispetto ai prodotti della generazione precedente 802.11b/g di Telecom Italia.Per utilizzare la rete senza fili Ã¨ necessario disporre di un computer con interfaccia Wi-Fi. Le prestazioni effettive possono variare a seconda del computer, della distanza, della velocitÃ  di connessione ADSL e di altri fattori.#(2) I valori sono misurati nei laboratori Telecom Italia. Per maggiori informazioni www.telecomitalia.com/sostenibilita.', '', 'Navigazione senza fili piÃ¹ veloce#Connessione di vari dispositivi#Installazione no problem#Funzione Eco per risparmio energetico##Tecnologia	ADSL/ADSL2+; velocitÃ  fino a 20 Mbps down/1 Mbps up	Wi-Fi	Wi-Fi 802.11 b/g/n; velocitÃ  di trasferimento fino a 300Mbps#Interfacce	Interfacce USB alta velocitÃ  (480 Mbit/s) ad alta potenza (500 mA), 1 porta connettore tipo A Interfaccia Wi-FiStandard IEEE 802.11nInterfaccia radio 2.4Ghz, 2 antenne, velocitÃ  di trasmissione teorica 300 Mbps#Protezione Wireless	WPA, WPA-PSK, WEP - Supporto Wi-Fi Protected Setup - Controllo di accesso#Funzioni avanzate	FunzionalitÃ  di routing avanzate (DHCP server, NAT, NAPT, Virtual Server) - Firewall - Condivisione Hard Disk e Stampante USB#Assistenza tecnica	2 anni di garanzia sul prodotto#Contenuto della confezione	Guida di installazione; CD autoinstallante (compatibile con Windows 7, Vista, XP- MacOS 10.3); 1 filtro ADSL 2+; 1 cavo Telefonico; 1 cavo Ethernet'),
(21, 3, 8, 'Modem Fibra', '99.00', '0.00', '8.25', 12, 0, 0, 1, 8, 4, 8, 4, 'Collegamento a PC, tablet, telefoni#Navigazione senza fili#Banda Wi-Fi a 2.4 Ghz e 5 Ghz#Controllo e gestione con lâ€™App 187', 'Con il Modem Fibra la Casa Ã¨ Digitale!##Il Modem Fibra Ã¨ il centro digitale della Casa che ti permette di navigare ad altissime prestazioni grazie alla doppia banda Wi-Fi (a 2.4 Ghz e a 5 Ghz.) o in alternativa sfruttando le 4 porte Gigabit Ethernet offrendoti il vantaggio di condividere e visualizzare in modo semplice ed immediato contenuti Multimediali (Foto, Musica, Video) su Smart TV, Tablet, PC e Smartphone di ultima generazione sfruttando la tecnologia DLNA e collegando un Hard Disk o una chiavetta USB al modem.#Ed i vantaggi non finiscono qui! Puoi mettere in rete la tua stampante semplicemente collegandola alla porta USB del Modem Fibra, potendo cosÃ¬ stampare comodamente qualunque documento o foto presente sui tuoi dispositivi connessi al modem.##Collega i tuoi telefoni di casa direttamente al modem#Naviga con tutti i PC, Tablet e Smartphone anche senza fili###Sfrutta al massimo le performance della tua linea ADSL grazie alla doppia banda Wi-Fi N di ultima generazione##Condividi in modo semplice ed immediato foto, musica, video, Hard Disk e Stampanti##Installazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software##App gratuita "TELEFONO" per trasformare il tuo smartphone in un cordless e sfruttare tutta la convenienza delle nuove offerte Fibra Ottica di Telecom Italia. Scarica subito la App nei Market Android e IOS (Google Play o App Store).##Funzione Eco per risparmiare sulla bolletta elettrica\r\nIl Modem Fibra opera solo su linea ADSL di Telecom Italia (ad eccezione di linee â€œAlice Casaâ€ e â€œAlice Voceâ€).##Acquista il Modem Fibra direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', '', 'Collegamento a PC, tablet, telefoni#Navigazione senza fili#Banda Wi-Fi a 2.4 Ghz e 5 Ghz#Controllo e gestione con lâ€™App 187##Tecnologia	ADSL/ADSL 2+/VDSL#Wi-Fi	802.11 b/g/n a 2.4 Ghz e 5 Ghz simultanee#Interfacce	1 porta ADSL/VDSL - 1 porta WAN 4 porte Gigabit Ethernet - 1 Interfaccia Dect integrata - 1 porta PSTN 2 porte FXS per collegamento di telefoni - 2 porte USB per collegamento dischi e stampanti#Funzioni avanzate	Condivisione foto, musica e video, Hard Disk e stampanti#Requisiti tecnici	Linea ADSL Flat o Fibra Ottica di Telecom Italia#Requisiti di sistema per la gestione dellâ€™interfaccia modem da PC	Principali browser inseriti di default sui sistemi operativi Windows 8, Windows 7, Vista, XP - MacOS 10.3#Assistenza tecnica	2 anni di garanzia sul prodotto#Contenuto della confezione	Modem Fibra, filtro DSL con 2 cavi telefonici giÃ  collegati, cavo Ethernet con connettori gialli, alimentatore'),
(22, 3, 8, 'Modem Wi-Fi TIM 42.2', '49.90', '0.00', '0.00', 0, 0, 0, 1, 8, 4, 8, 4, '1 Modem 3G Wi-Fi#1 mese di INTERNET fino a 42 MEGA', 'Con il Modem WI-FI 42.2 vivi un''esperienza di navigazione grazie alla elevate velocitÃ  di trasmissione 3G.#Hai un Modem WI-FI 3G e 1 mese di navigazione inclusa fino a 42 Mbps (max 20GB/mese) a soli 49,90â‚¬.#Acquistando il MODEM WI-FI 42.2 si acquista, con effetto immediato e definitivo, un Modem Internet con tecnologia HSPA UMTS HI-SPEED con cui navigare senza fili e velocemente fino a 42Mbps.#La velocitÃ  di connessione fino a 42 Mbps Ã¨ quella massima teoricamente raggiungibile e dipende da fattori tecnici variabili della rete dell''Operatore, dal livello di congestione della rete Internet, dal server cui il Cliente Ã¨ collegato e dalle caratteristiche del computer in dotazione. Il Modem WI-FI consente anche il collegamento WI-FI fino a 10 dispositivi.#Le foto sul sito tim.it riportano tutti i tipi di Modem Wifi 42.2: i Modem inclusi nelle confezioni possono essere diversi per forma, peso e colore ma hanno le stesse caratteristiche indicate nella scheda Dettaglio. Acquistando da questo sito, ti verrÃ  spedito uno dei Modem riportati nelle foto secondo le disponibilitÃ  del momento.', '20GB gratis di Internet per 30 giorni', '1 Modem 3G Wi-Fi\r\n#1 mese di INTERNET fino a 42 MEGA\r\n##Tecnologia DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS\r\n#Frequenze	DC-HSDPA: 900/2100 Mhz, download fino a 42.2Mbps - HSPA+: 900/2100 Mhz, download fino a 21.1 Mbps - HSDPA: 900/2100 Mhz, download fino a 14.4 Mbps - HSUPA: 900/2100 Mhz, upload fino a 5.76 Mbps - EDGE/GPRS: 850/900/1800/1900 Mhz\r\n#Contenuto della Confezione	Modem Internet - TIM Card - Alimentatore di rete - Cavetto USB - Guida Rapida\r\n#Requisiti di Sistema	La compatibilitÃ  Ã¨ totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n) e la velocitÃ  massima teorica Ã¨ 30Mbps'),
(23, 3, 18, 'Powerline Adapter', '60.00', '0.00', '49.00', 0, 1, 0, 1, 12, 4, 8, 4, 'Internet fino a 200 Mbps sul tuo impianto elettrico di casa#SemplicitÃ  di installazione#Criptazione e protezione dei dati trasmessi', 'Colleghi PC, modem e console sfruttando la rete elettrica#Vuoi trasformare la rete elettrica di casa tua in una rete per navigare e trasmettere, dove il wi-fi non arriva, dati in formato digitale?#Con Powerline Adpter puoi farlo.#Colleghi tra loro PC, modem e console senza problemi di copertura, distanza, nÃ© cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.#E la riservatezza dei dati che trasmetti e ricevi Ã¨ garantita mediante un sistema di crittografia.#Acquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', '', 'Internet fino a 200 Mbps sul tuo impianto elettrico di casa#SemplicitÃ  di installazione#Criptazione e protezione dei dati trasmessi##Tecnologia	bridge di rete RJ-45 su linea elettrica#Accessori ADSL	Si#Assistenza tecnica	2 anni di garanzia#Interfacce	1 porta Ethernet RJ-45#Prestazioni	fino a 100Mbps sulla porta Ethernet e 200Mbps sulla rete elettrica - possibilitÃ  di collegare piÃ¹ dispositivi#Protezione	protezione mediante chiave di cifratura univoche (128 bit AES Link Encryption)#Accessori in dotazione	cavo Ethernet (2 per confezione) - guida di installazione'),
(24, 3, 17, 'Tecnoware ERA Plus 9', '79.90', '0.00', '0.00', 0, 0, 0, 1, 12, 4, 8, 4, 'Facile installazione#Peso e dimensioni ridotti#Bassa rumorositÃ ', 'ERA PLUS 900 Ã¨ un UPS (Uninterruptible Power Supply), cioÃ¨ un gruppo di continuitÃ , di tipo Line Interactive, realizzato appositamente per proteggere il Modem Fibra di TIM da qualsiasi avaria della rete elettrica (black-out, sottotensioni, sovratensioni, microinterruzioni), causa dei frequenti danneggiamenti di Hardware e Software.\r\n#Quando Ã¨ presente la tensione di rete elettrica, ERA PLUS 900 svolge le funzioni di stabilizzatore e filtra i disturbi frequentemente presenti sulla linea elettrica (transienti, spike, interferenze, etc.), preservando in tal modo il modem ed eventuali altri dispositivi collegati alla sua uscita ad esempio il telefono cordless acquistato insieme allâ€™offerta Fibra di TIM; inoltre ricarica le batterie in modo ottimale.\r\n#In caso di avaria della rete elettrica o caduta di tensione, lâ€™UPS continua ad alimentare il modem ed altre apparecchiature protette ad esempio il telefono cordless garantendo per un lasso di tempo variabile il servizio telefonico e la connettivitÃ  che sono compromesse in caso di black-out.\r\n#ERA PLUS presenta tutte le moderne caratteristiche che garantiscono massima affidabilitÃ  e sicurezza:\r\n#Controllo a microprocessore di tutte le funzioni, garanzia di alta affidabilitÃ .\r\n##Stabilizzazione in uscita tramite AVR (Automatic Voltage Regulation).\r\n#Protezione da sovraccarico sia nel modo di funzionamento normale che in modo batterie.\r\n#Carica batterie di alte prestazioni che prolunga il tempo medio di vita delle batterie e ne garantisce una ricarica ottimale.\r\n#Accensione anche in condizioni di rete elettrica assente.\r\n#Riaccensione automatica dopo lo spegnimento per fine autonomia al ritorno della tensione di rete.\r\n#AdattabilitÃ  automatica alla frequenza dâ€™ingresso 50 o 60 Hz. Segnalazioni acustiche di vario tipo durante il normale funzionamento e che evidenziano le eventuali condizioni di allarme.\r\n#Alta affidabilitÃ .\r\n#Elevato rendimento e basso costo dâ€™esercizio.\r\n#Dimensioni compatte.\r\n#Design curato ed ergonomico.\r\n#SemplicitÃ  dâ€™uso.\r\n##Acquista ERA Plus 900 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.\r\n', '', 'Facile installazione#Peso e dimensioni ridotti#Bassa rumorositÃ ##Tecnologia	Line Interactive con Stabilizzatore#Raffreddamento	Naturale#RumorositÃ 	< 40 dBA a 1 m#Stabilizzazione tensione	Line Mode: Tramite AVR (Automatic Voltage Regulation) - Battery Mode: +/-5%#Sovraccarico ammesso	< 130%#Batteria	1 (interna) di tipo al Piombo acido sigillata senza manutenzione - Tempo di ricarica (Tipico) 4 ore - Tensione nominale 12Vdc - Autonomia Tipica 10 min#Dimensioni	10,1x14,2x27,9 cm#Peso	3,7 Kg#Ambiente operativo	Da 0 a 40 Â°C (per un corretto esercizio delle batterie da 20 a 25Â° C vedi grafi co â€œVita Batterie dellâ€™UPS in Servizioâ€)#UmiditÃ  relativa < 95% non condensata#Dotazioni	Cavo dâ€™alimentazione con spina Schuko'),
(25, 3, 8, 'TIM Modem Wi-Fi Car ', '99.90', '0.00', '0.00', 0, 0, 1, 1, 8, 4, 8, 4, 'Modem WI-FI CarPack4G#Codice PIN promozionale per 6 mesi di Servizi Assistenza ACI Global#Alimentatore da rete#Alimentatore da auto', 'Acquista il nuovo Car Pack e potrai connetterti anche quando sei in viaggio con tanti vantaggi in piÃ¹:#Modem wi-fi 4G + Alimentatore da auto + servizi ACI Global per 6 mesi (*)#Abbinando un anno di traffico internet puoi acquistare il modem wi-fi Car Pack 4G scontato a 50â‚¬ invece di 99,90â‚¬. Scopri i dettagli delle offerte annuali: Internet annuale 50GB e Internet annuale 100GB.#L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem TIM wi-fi Car Pack 4G consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.##(*) Nella confezione del Modem Car Pack Ã¨ inclusa una Card che riporta un codice Promozionale ACI Global. Il codice permette di fruire gratuitamente dei seguenti servizi per 6 mesi dalla prima chiamata ad ACI Global: 1 intervento di un carroattrezzi, 1 medico a domicilio, 1 trasporto in ambulanza, tutte le informazioni turistiche e di viaggio che vuoi. Lâ€™Operazione a premi Ã¨ valida dal 15/01/2016 al 15/07/2016. I servizi ACI Global previsti possono essere utilizzati fino al 14/1/2017.\r\n', 'Codice PIN promozionale per 6 mesi di Servizi Assistenza ACI Global##TIM Card del valore di 5â‚¬ (IVA incl)##20GB gratis per 30 giorni Internet 4GB LTE!', 'Modem 4G WI-FI#Caricabatterie da Auto##Tecnologia 4G - DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS#Frequenze	4G: 800/1800/2600 Mhz, download fino a 100Mbps, upload fino a 40Mbps - DC-HSDPA: 900/2100 Mhz, download fino a 42.2Mbps - HSPA+: 900/2100 Mhz, download fino a 21.1 Mbps - HSDPA: 900/2100 Mhz, download fino a 14.4 Mbps - HSUPA: 900/2100 Mhz, upload fino a 5.76 Mbps - EDGE/GPRS: 850/900/1800/1900 Mhz#Contenuto della Confezione	Modem 4G Wi-Fi - TIM Card con 1 euro di traffico prepagato incluso - Alimentatore da rete - Alimentatore da auto - Cavetto USB - Guida rapida â€“ Card con PIN ACI Global per usufruire della Promozione#Requisiti di Sistema	La compatibilitÃ  Ã¨ totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n).'),
(26, 3, 19, 'Wi-Fi Bridge Technicolor', '79.90', '0.00', '0.00', 0, 0, 1, 1, 8, 4, 8, 4, 'Design verticale compatto#Wi-Fi AC 4x4 ad altissime prestazioni#Associazione al modem in modalitÃ  WPS#Due porte Gigabit Ethernet#Led di stato', 'Tre funzionalitÃ  in unico prodotto#Con il multimedia connect puoi:#Collegare al modem tramite il Wi-Fi AC a 5GHz una TV, un decoder od un altro apparato#Associarlo ad un altro Multimedia Connect (TG234) e creare un ponte Wi-Fi AC a 5GHz#Creare una rete Wi-Fi AC a 5 GHz indipendente da quella del modem (funzionalitÃ  access point)', '', 'Design verticale compatto#Wi-Fi AC 4x4 ad altissime prestazioni#Associazione al modem in modalitÃ  WPS#Due porte Gigabit Ethernet#Led di stato##Tecnologia	Wi-Fi IEEE 802.11ac 5 GHz 4x4#Interfacce	2 Porte Ethernet#Contenuto della confezione	Multimedia Connect; Alimentatore; Cavo Ethernet; Guida rapida; Garanzia di conformitÃ ; Foglio di sicurezza'),
(27, 3, 20, 'Repeater Wi-Fi ZyXEL', '49.90', '0.00', '0.00', 0, 0, 1, 1, 8, 4, 8, 4, 'Funzionamento simultaneo a 2.4 e 5 GHz#VelocitÃ  di trasmissione fino a 750 Mbps#CompatibilitÃ  Wi-Fi b/g/n a 2.4 GHz e Wi-Fi n/ac a 5 GHz#Associazione al modem in modalitÃ  WPS', 'ZyXEL WRE6505 Wireless AC750 Range Extender consente di estendere facilmente reti esistenti wireless 802.11 b / g / n / ac in modo facile e veloce. Basta collegare il Repeater direttamente alla presa di corrente e l''indicatore di potenza del segnale LED consente di determinare la posizione di installazione ideale. Il one-click Wi-Fi Protected Setup (WPS Button a pagina 12), prevede l''installazione del client wireless senza frustrazione e completa in pochi passi la configurazione di accesso alla rete.#Tre funzionalitÃ  in 1 unico prodotto#Con Zyxel AC750 puoi:	estendere la rete Wi-Fi nella modalitÃ  Repeater	creare una rete Wi-Fi indipendente da quella, del modem, mediante la funzionalitÃ  Access Point	trasformare in Wi-Fi un device non dotato di tale feature, sfruttando la funzionalitÃ  di Terminal Adapter##Acquista il repeater ZyXEL AC750 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', '', 'Funzionamento simultaneo a 2.4 e 5 GHz#VelocitÃ  di trasmissione fino a 750 Mbps#CompatibilitÃ  Wi-Fi b/g/n a 2.4 GHz e Wi-Fi n/ac a 5 GHz#Associazione al modem in modalitÃ  WPS#Standard Wi-Fi	802.11 a / b / g / n / ac#VelocitÃ  Wi-Fi	300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz) Ricezione: 300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz)#Sicurezza Wi-Fi	64/128 bit WEP, WPA / WPA2, WPA-PSK / WPA2-PSK#Caratteristiche operative	ModalitÃ  Ripetitore, ModalitÃ  AP, Wi-Fi Protected Setup (WPS), Wi-Fi Multimedia (WMM),Selezione automatica dei canali, Programmazione senza fili, Gestione di potenza di uscita senza fili,Filtraggio degli indirizzi MAC, ModalitÃ  di impostazione di copertura.#Software	Aggiornamento del firmware online#Specifiche hardware	LAN: 10/100 Mbps One Ethernet RJ-45 porta con auto MDI / MDIX supporto#Dimensioni	(LxPxA): 46,5 x 62,3 x 90,9 mm#Peso	98 g#Ambiente operativo	Temperatura: 0 Â° C a 40 Â° C (32 Â° F a 104 Â° F) UmiditÃ : 10% a 90% (senza condensa)#Contenuto della confezione	Wireless Range Extender - Cavo Ethernet - Guida rapida - Certificato di garanzia - CD di support');
INSERT INTO `Devices` (`idDevices`, `categoriaID`, `marcaID`, `nome`, `prezzo_intero`, `prezzo_rate`, `prezzo_scontato`, `n_rate`, `promo`, `novita`, `disponibile`, `tipologiaID`, `sisopID`, `schermoID`, `connessioneID`, `caratteristiche`, `descrizione`, `inclusi`, `specifiche`) VALUES
(28, 2, 21, 'Alcatel Pixi3 10', '139.00', '0.00', '0.00', 0, 0, 0, 0, 6, 1, 3, 4, 'Display 10,1â€ ,1280x800#Android 5.1#ConnetivitÃ  Hsdpa 21 e chiamata voce\r\nâ€¢	Doppia fotocamera, 2 Mpxl + VGA\r\n', '', '20GB gratis di Internet 4G per 30 giorni##Scopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE.Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilitÃ  rapidamente, con fluiditÃ  e prestazioni affidabili.\r\n', 'Sistema Operativo Android 5.1#Display 10.1â€ Touch#MediateKMT8321 Quad-Core da 1.3 GHz###Connettivita   MediateKMT8321 Quad-Core da 1.3 GHz#Display  10,1â€, 1280x800#Fotocamera Front: 0.3 Mpxl Back: 2 Mpxl#Memoria  Interna 8GB (espandibile fino a 64GB)1GB di Ram#Processore   MediateKMT8321 Quad-Core da 1.3 GHz#Lettore multimediale   aac, amr, awb, mp3, ogg, wav, DivX, XviD, MPEG4, VP8, H.263, H.264#In dotazione   Caricabatteria - Connettore dati USB - Manuale d''uso#Dimensioni   255x155x8,9 mm.#Peso   365 grammi#Autonomia: (*)   Stand-by fino a 350h, 70 ore in chiamata###Note#(*) Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(29, 2, 1, 'Apple iPad mini 3', '519.00', '0.00', '0.00', 0, 0, 0, 1, 6, 2, 1, 2, 'Wi-FI + Cellular (4G LTE)#Display Retina da 7,9" (diagonale)#Sistema Operativo iOS8 (Processore A7)#Fotocamera iSight da 5MP', 'Il nuovo iPad mini Ã¨ piccolino ma pieno di grandi innovazioni, come il sensore di impronte digitali Touch ID e il display Retina. E ora Ã¨ disponibile anche nello splendido color oro.', '40GB gratis per 30 giorni Internet 4G LTE!###TIM Card del valore di 5 â‚¬ (IVA incl)', 'Sistema Operativo iOS 8#Display Retina da 7,9" (diagonale)#Chip A7#Fotocamera iSight da 5MP###Display   Retina da 7,9" (diagonale)#Sensori   impronte digitali Touch ID#Processore   Chip A7#Fotocamera   iSight da 5MP - Videocamera FaceTimeHD#Connettivita   Wi-Fi 802.11n con tecnologia MIMO + Cellular - 4G LTE piÃ¹ veloce2#Batteria   Fino a 10 ore di autonomia1###Note#1 La durata della batteria varia a seconda dellâ€™uso e della configurazione. Vai su www.apple.com/it/batteries per saperne di piÃ¹.#2 Richiede un piano dati. La tecnologia 4G LTE Ã¨ supportata solo in alcuni Paesi e solo da alcuni operatori. La velocitÃ  varia a seconda delle condizioni ambientali.'),
(30, 2, 1, 'Apple iPad mini 4', '529.90', '0.00', '0.00', 0, 0, 0, 1, 6, 2, 1, 2, 'Wi-Fi + Cellular (4G LTE)#Display Retina 7.9â€ (2048x1536) Led IPS#Sistema Operativo IOS9 (Processore A8)#Fotocamera iSight 8Mpx e 1.2 Mpx', 'La mini superpotenza.#A vederlo sembra davvero piccolo, ma Ã¨ pronto a stupirti con prestazioni eccezionali: il nuovo iPad mini 4, piÃ¹ sottile e leggero che mai, ha tutta la potenza che ti serve per fare grandi cose.##Sottile come sempre. Leggero come mai.#iPad mini 4 contiene tutto quello che ami dellâ€™iPad in un design ancora piÃ¹ leggero e portatile. Chiama gli amici con FaceTime o portati avanti con il lavoro: puoi farlo ovunque, in qualsiasi momento.##Piccolo, ma con i superpoteri.#iPad mini 4 ha un chip A8 di seconda generazione con architettura a 64 bit di livello desktop, per gestire anche le app piÃ¹ elaborate. Puoi montare un film, sfogliare le tue foto o fare entrambe le cose contemporaneamente: tutto Ã¨ fluido e immediato.##Due fotocamere straordinarie. Abilmente camuffate da iPad.#La fotocamera iSight di iPad mini 4 ha unâ€™ottica sofisticata, un sensore ancora piÃ¹ evoluto e un processore di immagine ISP progettato da Apple. Include comode funzioni come Panorama, Time-lapse, Moviola e le modalitÃ  scatto in sequenza e Timer. Anche la videocamera frontale FaceTime HD Ã¨ stata riprogettata con un sensore perfezionato e pixel piÃ¹ grandi, per riprendere ancora meglio negli ambienti poco illuminati. Risultato? Le foto e i video, per non parlare delle videochiamate e dei selfie, saranno incredibilmente brillanti.##Ancora piÃ¹ sicuro. Ancora piÃ¹ alla mano.#\r\nGrazie alla tecnologia Touch ID, iPad mini 4 Ã¨ protetto da una password inattaccabile e a prova di memoria: la tua impronta digitale. Ti basterÃ  un tocco per sbloccarlo, ma i tuoi dati non corrono alcun pericolo, anche se lo presti a un amico o un collega. E con Touch ID fare acquisti su iTunes, iBooks e App Store Ã¨ ancora piÃ¹ facile e sicuro.##Wireless ultraveloce.#Con iPad mini ti colleghi alle reti Wiâ€‘Fi e cellulari ad alta velocitÃ , per scaricare contenuti, navigare il web e condividere documenti praticamente ovunque. Se non câ€™Ã¨ il Wiâ€‘Fi, con il modello Wiâ€‘Fi + Cellular* puoi connetterti alle reti dati cellulari ad alta velocitÃ  in tutto il mondo. E con la Apple SIM puoi scegliere un piano dati a breve termine in oltre 90 Paesi e territori, in modo facile e veloce.##Tap dopo tap, lo amerai sempre di piÃ¹.#Con iPad mini 4 hai iOS 9, il sistema operativo mobile piÃ¹ intuitivo, evoluto e sicuro al mondo. iOS 9 Ã¨ stato creato su misura per iPad. App ancora migliori e nuove funzioni come Slide Over, Split View e Picture in Picture ti aiutano a fare molto di piÃ¹, piÃ¹ facilmente. Devi controllare un messaggio mentre rispondi a unâ€™email? O preparare una presentazione dando un occhio alla partita? Con iOS 9, tu e il tuo iPad potete fare un mondo di cose in piÃ¹.##App fatte per iPad. E per fare di tutto.#iPad mini 4 nasce con potenti app incluse per fare tutto quello che fai ogni giorno: navigare, controllare le email, modificare foto e video, prendere appunti o anche leggere un libro. E sullâ€™App Store ne trovi tantissime altre che non si limitano a ingrandire la versione per iPhone, ma sono create apposta per lo splendido display Retina dellâ€™iPad. Fotografia, giochi, viaggi, cucina, arredamento, hobby, sport: ci sono app per fare di tutto. E per farlo al meglio.##Cover fatte apposta per lui. Colori fatti apposta per te.#La Smart Cover e la custodia in silicone per iPad mini 4 proteggono il tuo dispositivo in ogni situazione. Sono progettate per essere usate insieme: la Smart Cover aderisce perfettamente allo schermo, mentre la custodia in silicone avvolge la parte posteriore. Ed entrambe sono disponibili in dieci splendidi colori.', '40GB gratis per 30 giorni Internet 4G LTE!###TIM Card del valore di 5â‚¬ (IVA incl)', 'Display Retina 7.9â€ (2048x1536) Led IPS#Sistema Operativo IOS9\r\nMemoria Interna 16GB/64GB (non espandibile)#Fotocamera iSight 8Mpx e 1.2 Mpx###Connettivita   LTE /HSDPA-DC 42.2/HSUPA 5.76/, Wi-Fi 802.11a/b/g/n /ac e MIMO, Bluetooth 4.2#Display   Retina Display 7.9â€ (2048x1536) Led IPS#Dimensioni   203,2x134,8x6,1mm.#Peso   304 gr#Autonomia   Fino a 9 ore su rete dati cellulare#Fotocamera   2 Fotocamera iSight 8Mpx e 1.2 Mpx#Formati supportati   MP3, MOV, MP4, 3GP, AAC, AAC+ HE-AAC, AIFF, JPG, PNG,GIF, H264, Mpeg4, Full HD#Memoria   Interna 16GB/64GB (non espandibile)#Processore   A8 con architettura a 64bit a 1.6GHz, 1GB Ram, co-processore M8#Sistema Operativo   IOS9#Applicazioni   Apple Store, Siri, iCloud, Facetime HD, Photobooth, mappe, GPS e A-GPS, Messaggi, Photos iMovie, iTunes store#In confezione   Carica batteria, Manuale dâ€™uso, Connettore USB Lightning, Impiega Nano-SIM###Note#* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata'),
(31, 2, 1, 'Apple iPad Pro 9.7"', '839.00', '23.00', '0.00', 36, 0, 0, 1, 6, 2, 2, 3, 'Display Retina da 9,7" (diagonale) con True Tone e rivestimento antiriflesso#Chip A9 con architettura a 64 bit di livello desktop#Sensore di impronte digitali Touch ID#Fotocamera iSight da 12MP con video a 4K#Videocamera FaceTime HD (foto da 5MP)', 'iPad Pro 9,7â€ Ã¨ un concentrato mai visto di portatilitÃ  e prestazioni.#Ãˆ spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina piÃ¹ luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, cosÃ¬ gli occhi non si affaticano. In piÃ¹ hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di piÃ¹? Aggiungi lâ€™ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerÃ  ancora piÃ¹ indispensabile.', '40GB gratis per 30 giorni Internet 4G LTE!###TIM Card del valore di 5 â‚¬ (IVA incl)', 'Sistema Operativo iOS 9#Display Retina da 9,7â€ (diagonale) con True Tone e rivestimento antiriflesso#Chip A9X di terza generazione con architettura a 64 bit di livello desktop#Sensore di impronte digitali Touch ID#Fotocamera iSight da 12MP con video a 4K###Display   Retina Display 9,7â€ (diagonale) con True Tone e rivestimento antiriflesso#Sensori   mpronte digitali Touch ID#Processore   Chip A9X di terza generazione con architettura a 64 bit di livello desktop#Fotocamera   iSight da 12MP con video a 4K#Videocamera   FaceTime HD (foto da 5MP)#Connettivita   4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO#Batteria   Fino a 10 ore di autonomia2###Note#1 Richiede un piano dati. La tecnologia 4G LTE Ã¨ supportata solo in alcuni Paesi e solo da alcuni operatori. La velocitÃ  varia a seconda delle condizioni ambientali.#2 La durata della batteria varia a seconda dellâ€™uso e della configurazione. Vai su www.apple.com/it/batteries per saperne di piÃ¹.'),
(32, 2, 4, 'HUAWEI MediaPad10 4G', '249.90', '0.00', '199.00', 0, 1, 0, 1, 6, 1, 3, 2, 'Display 10.1â€ (1280x800) IPS 16M di colori#Sistema Operativo Androidâ„¢ 4.2.2 JB', 'HUAWEI MediaPad 10 Link+ Ã¨ un tablet da 10,1 pollici con microprocessore quad-core HiSilicon Kirin 910 e supporto per le reti mobili 3G.##Con un design unibody ultra-sottile di 9,9 millimetri in lega di alluminio, Ã¨ elegante e portatile. MediaPad 10 Link+ ha uno schermo IPS HD con risoluzione di 1280Ã—800 pixel.##Monta una fotocamera frontale da 0,3 megapixel e una fotocamera posteriore da 3 megapixel. L''ottimo display in combinazione con la tecnologia audio DTS del MediaPad 10 Link+ offre una superba qualitÃ  audiovisiva, sia che si voglia scattare foto, giocare, guardare film in HD, o ascoltare musica', '20GB gratis per 30 giorni!###TIM Card del valore di 5â‚¬ (IVA incl)', 'Connettivita   HSDPA+ 42.2Mbps/HSUPA 5.76/, Wi-Fi 802.11b/g/n, Bluetooth 3.0#Display   10.1" (1280x800) IPS 16M di colori#Video/Audio/Picture   2 Fotocamera da 3 Mpx e VGA Lettore multimediale - MP3, WAV, 3GP, AAC, AAC+ e-AAC+, JPG, PNG,GIF, BMP, WMV, H264, Mpeg4, 1080p/30fps#Memoria   8GB (espandibile fino a 32GB)#Processore   Balon Cortex A9 Quad-Core 1.6GHz#SistemaOperativo   AndroidTM 4.2.2 Jelly Bean#Applicazioni   Google Mobile Services, Youtube, E-mail, GPS e A-GPS, SMS, Invio e ricezione, chiamata voce.#In dotazione   Caricabatteria - Manuale dâ€™uso#Dimensioni   257.4x175.9x9.9mm#Peso   630 grammi#Autonomia (*)   Stand-by fino a 600h###Note#* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(33, 2, 2, 'Samsung Galaxy Tab A', '349.00', '0.00', '299.00', 0, 1, 0, 1, 6, 1, 2, 2, 'Sistema Operativo Android 5.0#Display 9.7â€ TFT#Processore Snapdragonâ„¢ 410 QuadCore 1.2 GHz', 'Design sottile e moderno#Lo stile essenziale e la cornice metallizzata esaltano il nuovo formato 4:3, donando a Galaxy TAB A un look moderno e sofisticato, garantendo la massima maneggevolezza grazie ai 7,5 millimetri di spessore e solo 456 grammi di peso.##Esperienza visiva ottimizzata#Progettato per essere il tablet piÃ¹ portatile della categoria, Galaxy TAB A non accetta compromessi, regalandoti uno schermo piÃ¹ ampio rispetto ad altri tablet. Un nuovo display, ideale per visualizzare in modo ottimale presentazioni, siti web, pubblicazioni, e-book ed e-mail.##Foto perfette con Auto Focus#La fotocamera da 5 MP con messa a fuoco automatica permette di ottenere immagini sempre chiare e definite con la massima semplicitÃ  e in qualsiasi condizione. Ãˆ anche possibile eseguire facilmente scansioni di codici QR e codici a barre migliorando l''interazione con il mondo che ti circonda.##Interessanti contenuti e servizi gratuiti#L''esperienza di GALAXY TAB A Ã¨ arricchita dai numerosi contenuti disponbili per te. Potrai leggere le tue riviste preferite grazie ai 6 mesi inclusi con MagBox e goderti un fantasitico e-book al mese per un anno con Kindle for Samsung.##Prestazioni eccellenti#\r\nGrazie al processore Quad Core da 1.2GHz, 2GB di RAM, alla versione piÃ¹ recente di Android Lollipop e alla funzione Multischermo, Ã¨ il dispositivo perfetto per chi prova per la prima volta un Tablet e per chi cerca un prodotto performante.##Contenuti divertenti e protetti per i piÃ¹ piccoli#Con la ModalitÃ  Bambino i piÃ¹ piccoli possono usare Galaxy Tab A che ha una loro area dedicata. Questa modalitÃ  prevede unâ€™interfaccia divertente e protetta.##Scatto continuo#Grazie alla funzione Scatto Continuo potrete catturare rapidamente una serie successiva di scatti per immortalare ogni momento in rapida successione senza perdere nemmeno un secondo. Lo Scatto Continuo puÃ² essere attivato semplicemente tenendo premuta l''icona di scatto.##Connessione senza problemi#La Connessione Rapida* e Bluetooth tra SmartTV e TAB A controlla il TV dal Tablet, condivide i contenuti, e trasforma il tablet in un secondo display TV.*Funzione disponibile solo con i prodotti Tizen TV con Bluetooth in vendita dal 2015 o successivi.\r\n', '40GB gratis per 30 giorni!###TIM Card del valore di 5â‚¬ (IVA incl)', 'Display 9.7â€ TFT#Sistema Operativo Android 5.0###Display   9.7â€ TFT,1024x768 (4:3) #Processore   Snapdragon 410 QuadCore da 1.2 GHz#Memoria   Interna 16GB (espandibile fino a 128GB), 2GB di Ram#Tecnologia   LTE/HSDPA/HSUPA#Connettivita   Wi-Fi 802.11 a/b/g/n - Bluetooth 4.0 - micro USB#SistemaOperativo   Androidâ„¢ 5.0.2#Applicazioni   Android Market, Google Mobile App, Youtube, Inserimento testo e ricerca vocale, E-mail, A-GPS, SMS/MMS#Fotocamera   Front: 2 Mpxl - Back: 5 Mpxl#Lettore Multimediale   aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264#Dimensioni   242,5 x 166,8 x 7,4 mm#Peso   455 grammi#Autonomia   Stand-by fino a 250h - 43 ore in chiamata#In dotazione  Carica batteria - Manuale d''uso - Cavo dati USB'),
(34, 2, 2, 'Samsung Galaxy Tab S2', '589.00', '0.00', '539.00', 0, 1, 1, 1, 6, 1, 2, 3, '4GPLUS#Display 9.7â€ TFT, 2048x1536 QXGA (4:3)#Sistema Operativo AndroidTM 5.0.2 (Lollipop)#Memoria interna 32GB (espandibile fino a 128GB)#Fotocamera (Front: 2.1 MP Back: 8 MP )', '', 'Inclusi 2GB/mese 4G in promozione gratuita per i primi 3 mesi###40 GB gratis per 30 giorni Internet 4G###TIM Card del valore di 5â‚¬ (IVA incl)', 'Display 9.7â€ TFT, 2048x1536 QXGA (4:3)#Sistema OperativoAndroidTM 5.0.2 (Lollipop)#Memoria Interna 32GB (espandibile fino a 128GB)#Fotocamera (Front: 2.1 MP Back: 8 MP)###Connettivita   LTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB#Display   Display 9.7â€ TFT, 2048x1536 QXGA (4:3)#Dimensioni   237,3x169,0x5,6 mm#Peso   392 gr#Autonomia   Stand-by fino a 250h, 30 ore in chiamata#Fotocamera   Fotocamera (Front: 2.1 MP Back: 8 MP)#Formati supportati   aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264, UHD 4K#Memoria   Interna 32GB (espandibile fino a 128GB)3GB di Ram#Processore   Processore Octa-core,1.9 GHz, 1.3 GHz#SistemaOperativo   AndroidTM 5.0.2 (Lollipop)#Applicazioni   Android Market, Google Mobile App, Youtube, Inserimento testo e ricerca vocale, E-mail, GPS Glonass, SMS/MMS#In confezione   Carica batteria, Cavo dati Usb, Manuale dâ€™uso###Note#* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata'),
(35, 2, 2, 'Samsung Galaxy Tab Pro', '1299.00', '0.00', '0.00', 0, 0, 1, 1, 6, 1, 9, 3, 'Display 12â€ FHD+, 2160x1440 SuperAmoled#Sistema Operativo Windows 10 Pro#Memoria interna 128GB SSD#Fotocamera (Front: 5 MP AF, Back: 5 MP )', 'DESIGN SOTTILE&LEGGERO#Galaxy TabPro S rappresenta il perfetto connubio tra design e tecnologia. Estremamente sottile e leggero, stupisce per la ricercatezza dei dettagli e la qualitÃ  dei materiali.##ELEGANTE PROTEZIONE#La book cover protegge perfettamente Galaxy TabPro S, mantenendone intatta l''eleganza.##DISPLAY SUPER AMOLED#Galaxy TabPro S Ã¨ il primo prodotto Windows 10 al mondo dotato di display SUPER AMOLED. Lavorare in mobilitÃ  Ã¨ davvero comodo, grazie al display touchscreen da 12 pollici. Indipendentemente dal contenuto visualizzato, che sia una immagine o un video, i colori e la brillantezza delle immagini saranno esaltate dalla definizione e dalla qualitÃ  del display SUPER AMOLED di Galaxy TabPro S##INTRATTENIMENTO XBOX ONE GAME STREAMING#Con questa rivoluzionaria funzione, utilizzando la stessa connessione WiFi, potrai giocare in streaming ai giochi della tua XBOX ONE direttamente su Galaxy TabPro S.##PERFORMANCE SENZA COMPROMESSI#Il sistema operativo Windows 10, supportato dalla potenza del nuovo processore Intel Core M, sono una garanzia per lavorare professionalmente in qualunque situazione e in qualsiasi momento.##2-IN-1#Nessun compromesso: potente come un PC e portatile come un tablet. Galaxy TabPro S Ã¨ perfetto in qualunque situazione.##DURATA BATTERIA & RICARICA#La batteria a lunga durata di Galaxy TabPro S permette di focalizzarsi solamente sulle proprie attivitÃ . Completamente carico in sole due ore e mezza, consente un uso continuativo di oltre 10 ore', '40 GB gratis per 30 giorni Internet 4G###TIM Card del valore di 5â‚¬ (IVA incl)', 'Display 12â€ FHD+, 2160x1440 SuperAmoled#Sistema Operativo Windows 10 Pro#Memoria Interna 128GB SSD#Fotocamera (Front: 5 MP, Back: 5 MP)###Connettivita   USB 3.1 (C-type), Bluetooth 4.1, Wi-Fi 802.11 802.11 a/b/g/n/ac (MIMO), GPS + GLONASS, NFC, Wi-Fi Direct, Connettore da 3.5 mm per auricolare, Scheda nanoSIM#Display   Display 12â€ FHD+, 2160x1440 SuperAmoled#Dimensioni   290.3x198.8x6.3 mm#Peso   698 gr#Autonomia   600 minuti#Fotocamera   Fotocamera (Front: 5 MP Back: 5 MP)#Formati supportati   Video: MP4,3GP,WMV,ASF,AVI,MKV   Audio: MP3,AAC,WAV,WMA,AMR,FLAC#Memoria   128GB SSD, 4GB di Ram#Processore   Processore Intel Core M3 (Dualcore 2.2 GHz)#SistemaOperativo   Windows 10 Pro#Applicazioni   Microsoft Services: Maps, OneDrive, Windows Store, Music, Film & TV, Xbox, Money, Meteo, Notizie   Microsoft Apps: Word, Excel, PowerPoint, OneNote, Edge browser   Integrazione completa con il tuo Smartphone Galaxy (disponibile da fine Marzo 2016):   - Autenticazione con impronte digitali   - Sincronizzazione delle notifiche   - Hotspot Wi-Fi automatico#In confezione   Carica batteria, Cavo dati Usb, Manuale dâ€™uso###Note#* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(37, 2, 2, 'Samsung Galaxy View 18.4" LTE', '799.00', '22.00', '0.00', 36, 0, 0, 1, 6, 1, 10, 2, 'Processore OctaCore 1.6 GHz#Display 18.4â€ TFT, 1920x1080 Full HD#Sistema Operativo AndroidTM 5.1 (Lollipop)#Memoria interna 32GB (espandibile fino a 128GB)#Internet TV', '', 'TIM Card del valore di 5â‚¬ (IVA incl)#Incluso nel prezzoScopri con TIM Internet 4G e preparati a volare sul web con il tuo Smartphone LTE.Grazie alla nuova tecnologia LTE (Long Term Evolution) navigherai in mobilitÃ  rapidamente, con fluiditÃ  e prestazioni affidabili.###TIMvision incluso per tutto il 2016!#Cartoni, cinema, serie TV e documentari sempre on demand per creare il tuo palinsesto senza interruzioni pubblicitarie in un solo abbonamento.\r\nDove e quando vuoi!', 'Display 18.4â€ TFT PLS ,1920x1080 Full HD#Sistema Operativo AndroidTM 5.1 (Lollipop)#Memoria Interna 32GB (espandibile fino a 128GB)#Internet TV###Connettivita   ConnettivitÃ  WirelessBluetooth 4.1, BLEWi-Fi 802.11 a/b/g/n/ac#Display   Display 18.4â€ TFT PLS ,1920x1080 Full HD#Dimensioni   451,8x275,8x11,9 mm.#Peso   2,65 kg#Fotocamera   Fotocamera (Front: 2.1 MP)# Formati supportati   Lettore multimediale, aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264, H.265#Memoria   Interna 32GB (espandibile fino a 128GB)#Processore   OctaCore da 1.6 GHzx\\#SistemaOperativo   AndroidTM 5.1 (Lollipop)#In confezione   Carica batteria, Manuale dâ€™uso#Applicazioni   Android Market, Google Mobile App, Youtube, Inserimento testo e ricerca vocale, E-mail, GPS Glonass, SMS/MMS#Autonomia   fino a 8h in video play###Note#* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.'),
(38, 4, 22, 'WeR@Home', '199.00', '5.00', '0.00', 36, 0, 0, 1, 12, 4, 8, 4, 'Fruibile da smartphone, tablet e PC#Facile da installare e utilizzare#App dedicata per iOS e Android', 'Con il KIT WeR@Home di Essence  tieni la tua casa sempre sotto controllo!##Con il tuo smartphone e tablet puoi visualizzare in ogni momento ciò che accade nella tua casa e vieni avvisato se qualcuno vi si introduce. Attivi e disattivi il sistema di allarme, controlli  lo stato dei sensori e visualizzi lo storico degli eventi grazie alle App (iOS e Android) e all''interfaccia WEB dedicate. È facile da installare e non necessita di alcun cablaggio o collegamento in casa!###L''abbonamento al servizio WeR@home, gestito da Essence  ti permette di monitorare da remoto la tua casa e di accedere allo storico delle immagini registrate che il servizio custodisce per te. Dopo i primi 6 mesi di abbonamento al servizio inclusi, puoi rinnovare l''abbonamento sul sito http://add-ons.wersystem.com a soli 5 euro / mese.  Qui potrai anche scoprire come personalizzare la configurazione di base aggiungendo altri componenti (telecamere, sensori di fumo, sensori di movimento, sirene...).##WeR@Home di Essence è un prodotto esclusivo di Telecom Italia: acquistalo ora online e lo riceverai a casa tua in consegna gratuita.###l KIT comprende#Centralina#1 telecamera con sensore di movimento: immagini JPEG a colori#1 sensore apertura porta/finestra con sensori LED#6 MESI DI SERVIZIO WeR@Home GRATIS!##CARATTERISTICHE#Design moderno ed elegante#Invio notifiche su smartphone/tablet/PC#Interfaccia WEB facile da utilizzare#App dedicata per iOS e Android#Assistenza tecnica#Sistema espandibile per adattarsi alle tue esigenze', '', ''),
(39, 4, 23, 'Videocamera D-Link Motorizzata', '99.90', '4.16', '0.00', 24, 0, 0, 1, 12, 4, 8, 4, 'Tecnologia wireless N#LED a infrarossi integrati#Accesso tramite Internet#Video VGA 480p', 'La Videocamera cloud Wireless Pan/Tilt/Zoom (DCS-5010L) è una soluzione di monitoring versatile per la casa o il piccolo ufficio.##Grazie alla funzione Pan/Tilt (motorizzazione), è possibile monitorare un''intera stanza a prescindere dalla posizione in cui viene collocata, perché ha un raggio d''azione pari a 360 gradi.##La DCS-5010L garantisce, immagini video VGA e audio, anche in completa oscurità, grazie ai LED a infrarossi.##Con mydlink Home è, inoltre, possibile accedere alla maschera di gestione e configurazione della videocamera tramite Internet o tramite connessione 4G da tablet e smartphone, grazie all''app gratuita mydlink Home, disponibile per iOS e Android.', '', 'Tecnologia wireless N#LED a infrarossi integrati#Accesso tramite Internet###Capacità  Pan/Tilt   360/120 gradi#Design   Compatto#Memoria   Slot per scheda MicroSD (non inclusa) per storage di registrazioni audio e video#Registrazione   Video in definizione VGA (480p) e immagini compresse in H.264#Connettivita   Tecnologia Wireless N - Pulsante Wireless security con Wi-Fi Protected Setup (WPS)#LED   LED InfraRossi per vision notturna fino a 8m#Sensori   Sensore PIR (Passive Infrared) per rilevazione movimenti#Avanzate   Invio di e-mail in caso di movimento rilevato#Microfono   Microfono integrato#Cloud   mydlink Cloud Services: il modo più semplice e veloce per monitorare da remoto'),
(40, 4, 8, 'TIMTag', '129.00', '0.00', '0.00', 0, 0, 1, 1, 12, 4, 8, 4, 'Resistente allâ€™acqua#Fornisce allarmi di movimento (velocitÃ , inerzia, crash)#Batteria di lunga durata#Dimensioni 49 x 47 x 17 mm', 'TIMTag, il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te piÃ¹ care.#Segui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.##Con TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, unâ€™ App dedicata intuitiva e semplice da utilizzare, inclusi 12 mesi di servizio TIMTag e una TIM Card!#Tutto a soli 129â‚¬!##Con lâ€™app TIMTag puoi:#Localizzare e seguire i tuoi amici a quattro zampe tramite le funzioni â€œDove Ã¨ oraâ€ e â€œSeguimiâ€#Condividere con i tuoi cari le funzioni di localizzazione di TIMTag#Impostare allarmi di â€œMovimentoâ€ e uscita da un area di sicurezza in modo da ricevere direttamente sul tuo smartphone notifiche quando il tuo amico a quattro zampe si muove o esce da una determinata area da te definita#Visualizzare il percorso per raggiungere i tuoi amici a quattro zampe tramite la funzione â€œTrovamiâ€#Gestire in maniera dinamica e intelligente la durata della batteria allâ€™interno dellâ€™App####TRE SEMPLICI PASSI E POTRAI TRACCIARE TUTTO QUELLO CHE AMI#Acquista il Pack TIMTag: Acquista subito online e ricevi direttamente a casa tua il pack oppure vai in uno dei negozi TIM.#Attiva la TIM Card: Registra la TIM Card che trovi nel Pack in un negozio TIM (l''offerta TIMTag si attiverÃ  automaticamente dopo la registrazione).#Scarica l''APP TIMTag sul tuo Smartphone: Installa l''app sul tuo smartphone ed associa il dispositivo di localizzazione (Android ed iOS).#Prima di inserire la TIM Card nel dispositivo verifica che lâ€™offerta TIMTag sia attiva sulla linea. ', 'TIM Card del valore di 5 â‚¬ (IVA incl)', 'L''offerta Ã¨ rivolta a tutti i Clienti TIM Ricaricabili Consumer.#Allâ€™attivazione della TIMCard viene attivata lâ€™offerta Tim-Tag in promozione per 12 mesi.#L''offerta puÃ² essere attivata solo sulla TIM Card contenuta all''interno della confezione.##Il traffico sia dati che sms del Tracker GPS vs la piattaforma di servizio, Ã¨ incluso nellâ€™opzione TIM Tag (50MB e 100SMS ogni 30 giorni). Il Bundle dati e sms previsto Ã¨ calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.#Per fruire dell''offerta Ã¨ in ogni caso necessario che la TIMCard ad essa associata disponga di un credito telefonico residuo, in quanto non puÃ² essere effettuato traffico in assenza di credito sulla TIM Card.##Per effettuare il download sul proprio smartphone dellâ€™APP TIMTag, Ã¨ necessario avere connessione dati attiva o una copertura Wi-Fi.#Lâ€™app TIMTag Ã¨ compatibile con dispositivi iOS e Android.##Alla scadenza (trascorsi 360 gg dallâ€™attivazione di Servizio), salvo disdetta, lâ€™opzione TIMTag resterÃ  attiva a 5â‚¬/mese con addebito su credito residuo della TIMCard. Pertanto si dovrÃ  fare attenzione a disporre di un credito residuo sufficiente di almeno 5â‚¬.##Ãˆ possibile avere informazioni sul servizio e sullo stato dellâ€™utenza contattando il Servizio Assistenza Clienti 119.##Il Cliente potrÃ  recedere in qualsiasi momento dallâ€™Offerta chiamando il Servizio Assistenza Clienti 119.##Il rilevatore GPS contenuto nella confezione Ã¨ acquistato con effetto immediato e definitivo###TIMTag Ã¨:#Resistente allâ€™acqua#Fornisce allarmi di movimento (velocitÃ , inerzia, crash)#Ha una batteria di lunga durata#Fornisce allarmi per uscita da zone sicure (geofence)'),
(41, 4, 23, 'D-Link SmartHome Station', '159.90', '5.00', '0.00', 24, 0, 0, 1, 12, 4, 8, 4, 'Servizio gratuito#Visualizzazione da smartphone o tablet delle riprese#Invio notifiche su smartphone/tablet/e-mail#ConnettivitÃ  Wi-Fi tramite ADSL o modem mobile 3G o 4G', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.##Nel Kit sono inclusi:#Un Monitor HD (DCS-935L) #Un Wi-Fi Motion Sensor (DCH-S150)#Una smart plug (DSP-W215) ##Tramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi cosÃ¬ da semplificarti la gestione della casa rendendola piÃ¹ sicura e intelligente.####Facile configurazione e gestione dei tuoi dispositivi##Basta semplicemente scaricare lâ€™app mydlink Home e la configurazione guidata ti aiuterÃ  a utilizzare al meglio tutti i dispositivi presenti nel kit in modo facile e intuitivo.#Con lâ€™app potrai creare tu stesso le regole per accendere e spegnere i tuoi elettrodomestici quando e ovunque vuoi. ####Notifiche automatiche e real time sul tuo smartphone##Lâ€™app mydlink Home ti notificherÃ  quando:#Un movimento o un suono viene rilevato#Un dispositivo Ã¨ stato acceso o spento#Il consumo elettrico Ã¨ stato superato#Un dispositivo non funziona correttamente o si surriscalda##Il sensore di movimento a infrarossi passivo riduce di gran lunga i falsi allarmi garantendoti di essere avvisato solo quando necessario: rilevazione dei movimenti fino a 8 metri (100Â° orizzontale, 80Â° verticale).####Monitor HD##Con il Monitor HD, potrai controllare la tua casa in alta definizione (720p) e grazie alla visione notturna anche in assenza di luce (fino a 5 mt). Il Monitor HD ti avvisa mediante notifica push ogni volta che verrÃ  rilevato un suono o un movimento.####Sensore di movimento##Grazie alla tecnologia a infrarossi passiva saranno ridotti i falsi allarmi e verrai avvisato solo quando necessario. Con il sensore di movimento rileverai i movimenti fino a 8 metri (100Â° orizzontale, 80Â° verticale).####Smart Plug##Potrai accendere e spegnere i dispositivi dal tuo smartphone tablet, ovunque ti trovi. Essere avvisato se un elettrodomestico Ã¨ stato acceso o spento. Impostare nuove regole di funzionamento in base alle tue esigenze.', '', ''),
(42, 4, 1, 'Apple Watch Sport 38', '369.90', '10.28', '0.00', 36, 0, 1, 1, 12, 4, 8, 4, 'Cassa in alluminio anodizzato color argento, grigio siderale#Vetro rinforzato Ion-X#Display Retina con Force Touch#Fondo in materiale composito#Cinturino Sport con borchia in acciaio inox inossidabile#Digital Crown', 'Ogni collezione di Apple Watch eÌ€ realizzata con leghe speciali, studiate per unire estetica e robustezza. La cassa di Apple Watch Sport eÌ€ in alluminio anodizzato color argento, grigio siderale, oro oppure oro rosa, mentre nei modelli Apple Watch eÌ€ in acciaio inossidabile colore naturale o nero siderale. La cassa eÌ€ disponibile in due misure: 38 mm e 42 mm. Abbiamo anche creato una gamma di cinturini intercambiabili in materiali esclusivi. Apple Watch usa tecnologie rivoluzionarie come la Digital Crown, il Taptic Engine e il Force Touch. E grazie a una batteria che dura fino a 18 ore, puoi usarlo tutto il giorno.*###*La durata della batteria varia a seconda dell''utilizzo e della configurazione; i risultati effettivi possono variare. Vai su www.apple.com/it/batteries e www.apple.com/it/watch/battery.html per saperne di piuÌ€', '', 'Cassa in alluminio anodizzato color argento, grigio siderale, oro giallo o oro rosa#Fondo in materiale composito#Cinturino Sport con borchia in acciaio inossidabile#Digital Crown#Altoparlante e microfono###Display   Vetro Ion-X   -   Display Retina con Force Touch#Sensori   Cardiofrequenzimetro   -   Accelerometro   -   Giroscopio   -   Sensore di luce ambientale#Connettivita   Wi-Fi (802.11b/g/n a 2,4GHz)   -   Bluetooth 4.0#Batteria   Fino a 18 ore di autonomia*#Resistenza all''acqua   Si**###*La durata della batteria varia a seconda dellâ€™utilizzo e della configurazione; i risultati effettivi possono variare. Vai su www.apple.com/it/batteries ewww.apple.com/it/watch/battery.html per saperne di piuÌ€.##**Apple Watch eÌ€ resistente agli schizzi e allâ€™acqua, ma non eÌ€ impermeabile. Per esempio puoi indossarlo durante un allenamento, sotto la pioggia e quando ti lavi le mani, ma consigliamo di non immergerlo. Apple Watch ha una resistenza allâ€™acqua di grado IPX7 secondo lo standard IEC 60529.##Le funzioni possono subire modifiche e potrebbero non essere disponibili in tutte le lingue o in tutte le aree geografiche. Richiede iPhone 5 o successivo.##TM e Â© 2015 Apple Inc. Tutti i diritti riservati.'),
(43, 4, 24, 'Pack TIMvision&Chromecast', '39.00', '0.00', '0.00', 0, 0, 0, 1, 12, 4, 8, 4, 'Con Chromecast, il dispositivo che connette smartphone e tablet alla TV, hai TIMvision incluso per tre mesi', 'Con Chromecast porti TIMvision sulla tua TV##Con Chromecast porti TIMvision, i tuoi video, le foto e molto altro ancora su qualsiasi TV usando semplicemente uno smartphone o il tablet ed una connessione Internet Wi-Fi, tutto senza consumare GB.##\r\nCon lâ€™App TIMvision potrai vedere cartoni, cinema, serie TV, documentari sempre on demand. Creare il tuo palinsesto senza interruzioni pubblicitarie ed avere piÃ¹ di 8.000 titoli disponibili in un solo abbonamento mensile ed il programma inizia quando vuoi tu sulla TV di casa.####Il tuo smarthphone come un telecomando##Non devi fare altro che utilizzare il tuo smartphone, il tablet come un telecomando per riprodurre contenuti direttamente sulla tua TV, mettere in pausa e regolare il volume.##Se sei cliente TIM, puoi acquistare il Pack TIMvision&Chromecast anche presso un Negozio TIM, hai TIMvision sempre incluso per i primi 3 mesi.####Plug and play##Chromecast Ã¨ un dispositivo di streaming multimediale che, una volta inserito in una qualsiasi porta HDMI, ti permette di trasmettere i contenuti preferiti direttamente sullo schermo della TV di casa. Ãˆ piccolo, leggero, economico, facile da installare ed ancora piÃ¹ semplice da usare.####Trasmetti qualsiasi contenuto dal tuo telefono Android o dal browser Chrome ##Puoi trasmettere le pagine di un sito web dal browser Chrome o riprodurre i contenuti visualizzati sul tuo smartphone o tablet direttamente sulla TV. Puoi riprodurre tutti i contenuti che trovi online.####Video in alta definizione##Chromecast permette un''alta risoluzione video con buffering basso, grazie al supporto Wi-Fi 2,4/5 GHz e ad un sistema integrato con antenna adattiva.##Inoltre, lo streaming avviene direttamente dal cloud, perciÃ² la riproduzione di film e programmi TV prosegue anche se ti allontani con il dispositivo dalla stanza.##Chromecast Ã¨ compatibile con iPhoneÂ®, iPadÂ® o dispositivi Android e con i laptop Chromebook e Mac\r\n', '', 'Chromecast##Dimensioni   Dispositivo: 51,9 x 51,9 x 13,49 mm  -  Confezione: 124,4 mm x 42,85 mm x 124 mm  -  Cavo di alimentazione: 1,75 m#Peso   39,1g#Porte e connettori   HDMI compatibile CEC (Consumer Eletronic Control)   -   Micro USB#Colore   Nero#Risoluzione   1080p#Connettivita   Wi-Fi 802.11 b/g/n/ac (2,4 GHz/5 GHz)#Sicurezza   WEP, WPA/WPA2#Alimentazione   Alimentazione 5V, 1A##Sistema Operativo Supportato   Android 4.1 e versioni successive  -  iOS 7.0 e versioni successive\r\nWindows 7 e versioni successive  -  Mac OS X 10.7 e versioni successive  -  Chrome OS\r\n'),
(44, 4, 5, 'Cassa Nokia MD 12 ', '49.90', '0.00', '0.00', 0, 0, 1, 0, 12, 4, 8, 4, 'Design ultra â€“ compatto#NFC incluso#Fino a 15 ore di riproduzione musicale#Garanzia 24 mesi', 'Speaker bluetooth Nokia MD-12 colore bianco. NFC. Ascoltare la tua musica preferita Ã¨ ora piÃ¹ semplice chemai. Con il suo design ultra - compatto ed una vasta gamma di bellissimi colori , MD -12 Ã¨ abbastanza piccoloda stare in tasca. Grande esperienza bassi. Non lasciate che la sua piccola dimensione vi inganni . Questopiccolo altoparlante dispone di un grande carico di energia . Progettato con le ultime tecnologie , MD -12 Ã¨stato progettato con un attuatore integrato, creando un grande effetto dei bassi quando Ã¨ impostato su quasiqualsiasi superficie . La durata della batteria superiore per un piÃ¹ divertente ascolto. Con NFC incluso , bastatoccare il tuo telefono cellulare abilitato NFC al diffusore e siete a posto. Oppure utilizzare il Bluetooth edascoltate in streaming i propri brani in modalitÃ  wireless e ballate tutta la notte con 15 ore di riproduzionemusicale garantite.', '', 'Design ultra â€“ compatto#NFC incluso#Fino a 15 ore di riproduzione musicale#Garanzia 24 mesi###CompatibilitÃ  iPad   No#CompatibilitÃ  iPhone 3g   No#CompatibilitÃ  iPod classic   No#CompatibilitÃ  iPod nano   No#CompatibilitÃ  iPod shuffle   No#CompatibilitÃ  iPod touch   No#Numero altoparlanti frontali centrali   0#Numero altoparlanti frontali laterali   1#Numero altoparlanti retro   0#Subwoofer   No#Portatile   Si#Tipologia di utilizzo   Diffusore da interno/esterno#Colore primario   Bianco#Consumo   0W#Wireless altoparlanti frontali laterali   Si#Potenza altoparlanti frontali laterali   0W#Materiale altoparlanti frontali laterali   Plastica#Diametro Bass altoparlanti frontali laterali   0 mm#Wireless Subwoofer   No#Potenza Subwoofer   0W#Materiale Subwoofer   Plastica#Diametro Bass   0 mm#Connettore dock per iPod/iPhone   No#Controllo via usb iPhone/iPod/iPad   No#Airplay   No'),
(45, 4, 2, 'Samsung SmartTV+Soundboard', '0.00', '26.08', '0.00', 36, 0, 0, 1, 10, 4, 8, 4, 'Modello 50JU6400 - 50â€œ#Ultra HD - 4K 3840 x 2160#Soundbar HW-J250 inclusa#TIMvision incluso', '', '', ''),
(47, 4, 2, 'Samsung Galaxy Gear ', '349.00', '0.00', '0.00', 0, 0, 0, 1, 12, 1, 8, 1, 'Orologio Multifunzione Intelligente#Display 2â€ curved SuperAMOLED#Processore DualCore 1GHz#Certificazione IP67', '', '', 'Orologio Multifunzione Intelligente#Display 2â€ curved SuperAMOLED#Processore DualCore 1GHz#Certificazione IP67###Connettivita   HSDPA 21Mbps/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - **Micro USB#Frequenze   2G: 900/1800 - 3G: 900/2100#Display   Touch da 2â€#Formato SIM   Nano#Memoria interna   4GB*#Altro   Notifiche, Chiamate, SMS, S Health,Lettore musicale, Meteo, Navigatore, Comandi vocali, Running, Download ulteriori applicazioni tramite il Samsung Gear Apps#In dotazione:  ** Supporto per la carica Micro USB - Carica batteria - Guida di riferimento rapido#Dimensioni   39,9 x 58,1 x 12,5 mm#Peso   84 gr.#Batteria   300mAh###Note##(*) Memoria interna: Parte della memoria interna indicata Ã¨ utilizzata dal sistema operativo e dalle applicazioni preinstallate'),
(49, 4, 8, 'Decoder TIMvision', '49.00', '0.00', '0.00', 0, 0, 0, 1, 9, 4, 8, 4, 'Migliaia di titoli tra cartoni, film, serie e documentari.', 'Con il decoder TIMvision hai a disposizione piÃ¹ di 8.000 titoli tra cartoni, film, serie e documentari sempre on demand per creare il tuo palinsesto senza interruzioni pubblicitarie.##Tramite il telecomando puoi mettere in pausa il tuo film preferito e farlo ripartire quando decidi tu, puoi rivedere una scena o andare avanti.##Collega il decoder alla tua linea ADSL Illimitata o Fibra Ottica di TIM per accedere:#al Videostore di TIMvision, dove ti aspettano tutti gli episodi delle migliori serie, dalle piÃ¹ famose alle piÃ¹ esclusive, i cartoni animati e le serie preferite per bambini e ragazzi, le anteprime piÃ¹ attese e tanti film mai visti in tv o da rivedere in lingua originale. Scegli tra oltre 6.000 titoli sempre aggiornati.#alla Replay TV di TIMvision, dove trovi tutti i programmi televisivi andati in onda negli ultimi 7 giorni sulle reti RAI (da tutti i dispositivi escluso streaming da web) e LA7 e lâ€™archivio LA7#a YouTube, per vedere i video che vuoi direttamente dalla tua TV##Puoi goderti la visione anche su Smart TV, su timvision.it e su app TIMvision per Smartphone, Tablet e PC, utilizzando le credenziali scelte al momento della registrazione al servizio TIMvision.', '', 'Dimensioni (LxPxA)   210 mm x 210 mm x 40 mm#Confezione   Decoder - Cavo alimentazione - Cavo HDMI - Telecomando universale - Batterie - Guida rapida all''installazione#Processore   Processore Intel ATOM CE 4230#Memoria   Ram 1 GByte DDR3#Connettivita   HDMI 1.3 - Video Composito - Uscita audio ottica digitale - Ethernet 10/100 BASE-T - 1 x USB 2.0 - Connessione Wireless 802.11 b/g/n (2.4GHz e 5GHz) - Ricevitore IR integrato per telecomando TIMvision#Formati supportati   Audio: MPEG-1 Layer I, II 2.0 - MPEG-1 Layer 3 (mp3) 2.0 - MPEG-4 AA-LC 2.0 - MPEG-4 AAC-LC 5.1 - MPEG-4 HE-AAC 5.1 - MPEG-4 BSAC 2.0 - LPCM 7.1 - WMA9 2.0 - WMA9 Pro 5.1   -   Video: MPEG-1 - MPEG-2 - MPEG-2@HL - MPEG-4.2 ASP@L5 (720p) - MPEG-4.10 (H.264) BP@L3 MP4@L4.0 e HIP@L4.0 - WMV9 MP@HL - SMPTE421 (VC-1) MP@HL Fotografici: JPEG - BMP - GIF - TIFF â€“ PNG#Impostazione intuitiva   Collegamento al televisore: Il Decoder TIMvision puÃ² essere collegato al televisore mediante il cavo HDMI oppure mediante cavo analogico RCA-SCART (inclusi nella confezione)   -   Collegamento alla rete ADSL: Il Decoder TIMvision puÃ² essere collegato alla rete mediante cavo Ethernet o mediante connessione Wi-Fi. Alla prima accensione una procedura guidata ti assisterÃ  nella prima configurazione della tua connessione#ModalitÃ  Video PAL   576p - 720p - 1080i - 1080p');

-- --------------------------------------------------------

--
-- Struttura della tabella `Faq`
--

CREATE TABLE IF NOT EXISTS `Faq` (
  `idFaq` int(11) NOT NULL AUTO_INCREMENT,
  `domanda` mediumtext NOT NULL,
  `risposta` longtext NOT NULL,
  `assistanceID` int(11) NOT NULL,
  PRIMARY KEY (`idFaq`),
  KEY `fk_assistance_idx` (`assistanceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dump dei dati per la tabella `Faq`
--

INSERT INTO `Faq` (`idFaq`, `domanda`, `risposta`, `assistanceID`) VALUES
(1, 'Quali documenti sono necessari?', 'Dovrai fornire in visione i seguenti documenti:<br>- documento di identità del titolare linea (carta identità, patente di guida con foto, passaporto);<br>- codice fiscale del titolare linea;<br>- documentazione antiabusivismo, rappresentata da uno dei seguenti documenti:<br>- copia di una recente fattura (luce, gas, acqua) anche se intestata ad altri precedenti soggetti, occupanti la medesima unità immobiliare per la quale è stata fatta richiesta di collegamento telefonico<br>&nbsp;&nbsp;&nbsp;&nbsp;oppure<br>&nbsp;&nbsp;&nbsp;&nbsp;copia della concessione/licenza edilizia.<br>&nbsp;&nbsp;&nbsp;&nbsp;oppure<br>&nbsp;&nbsp;&nbsp;&nbsp;copia della domanda di concessione in sanatoria corredata della prova dell''avvenuto pagamento delle somme dovute a titolo di oblazione (così come previsto dal 2° comma dell''art.45 della legge 28.2.85 n.47).<br><b>Solo nel caso non fosse possibile</b> presentare uno qualsiasi dei documenti, potrai produrre in sostituzione una "<b>autodichiarazione sostitutiva di atto notorio</b>" autenticata dal notaio o dal segretario comunale come previsto dall''art.4 della legge 4.1.68 e successive modificazioni ed integrazioni.<br>', 1),
(2, 'Come si ottiene la fattura dei tuoi acquisti?', 'La fattura è disponibile per l’acquisto di prodotti, SIM Card, ricariche, canoni addebitati su carta di credito per offerte rateizzate e domiciliate e traffico roaming addebitato su carta di credito.#Le modalità di emissione della fattura sono diverse a seconda dell''acquisto effettuato.', 2),
(3, 'Sono all’estero con la mia linea ricaricabile, cosa devo fare per chiamare?', '\r\nTutti i clienti TIM con una ricaricabile sono abilitati a chiamare e ricevere telefonate all''estero.##Hai la possibilità di scegliere come utilizzare il servizio in base alle tue esigenze:##addebitando i costi direttamente sul credito residuo della tua ricaricabile;#addebitando i costi delle chiamate originate e ricevute e degli sms inviati su una carta di credito convenzionata (roaming domiciliato).', 3),
(4, 'Sono all’estero con la mia linea abbonamento, cosa devo fare per chiamare?', 'Tutti i clienti TIM con un abbonamento sono automaticamente abilitati a chiamare, ricevere telefonate, inviare e ricevere SMS dall’estero con gli operatori che offrono il servizio di roaming.\r\nUsare il telefonino all’estero è facilissimo!##Per effettuare chiamate dovrai semplicemente digitare il numero preceduto dal prefisso internazionale (+39 per l''Italia). Ad esempio per chiamare il numero italiano 06XXXXXX, digita: +3906XXXXXX.##TIM Ricorda: puoi chiamare gratuitamente il 119 dalla zona Europa 24h24. Ti basterà digitare il numero in formato breve 119 oppure in formato esteso +393399119.', 3),
(5, 'Cos''è il trasloco di una linea telefonica?', 'Il trasloco ti permette di trasferire la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa.', 4),
(6, 'Quanto costa il trasloco?', 'Il contributo da versare per il trasloco della linea telefonica è di 73,20 € (IVA al 22% inclusa).\r\nLa fatturazione del canone e dei servizi telefonici attivi presso la tua vecchia abitazione proseguirà fino all’attivazione della linea presso la nuova abitazione da te indicata.\r\n#Inoltre ricorda sempre che:##nel caso in cui fosse necessario realizzare lavori aggiuntivi, essi saranno completamente a tuo carico e il Servizio Clienti te ne comunicherà tempestivamente il costo per la preventiva approvazione.\r\nse i tempi di completamento del trasloco superano i 60 giorni dalla data di acquisizione della tua richiesta, in alternativa, potrai richiedere contestualmente la cessazione della tua vecchia linea e l’attivazione di una nuova linea presso la nuova abitazione. Questa procedura eccezionale prevede la cessazione della fatturazione dei costi della linea disattivata e l’applicazione del contributo previsto per il trasloco (meno oneroso di quello previsto per l’attivazione di nuova linea).\r\nquesta procedura non consente di mantenere il tuo numero di telefono anche sulla nuova linea; inoltre se, al momento della richiesta di attivazione della nuova linea, le offerte attivate sulla tua vecchia linea non fossero più commercializzate da TIM, sarebbe necessario attivare le nuove offerte previste in sostituzione di quelle non più commercializzate (con caratteristiche economiche sostanzialmente analoghe, se non più convenienti).', 4),
(7, 'Acquisto Prodotti online?', 'Per l’acquisto dei prodotti online è sempre prevista l’emissione della fattura. Nel catalogo, gli importi indicati sono espressi in euro e si intendono comprensivi dell’IVA.#La fattura ti verrà inviata, nei giorni successivi al pagamento, in formato .pdf all’indirizzo di posta elettronica specificato nell’ordine di acquisto.\r\nInoltre, se lo desideri, puoi richiedere anche l’invio della fattura all’indirizzo di posta ordinaria che potrai indicare esplicitamente alla voce “recapito fattura”. In tal caso il documento ti sarà recapitato entro circa 10 giorni dalla data dell’ acquisto.\r\nRicordiamo che non è possibile effettuare alcuna variazione sui dati della fattura successivamente all’ordine online.', 5),
(8, 'Acquisto TIM Card, traffico ricaricabile (ricariche), canoni relativi ad offerte con pagamento domiciliato su carta di credito, con o senza prodotto rateizzato, traffico roaming addebitato su carta di credito.\r\n', 'Per la richiesta della ricevuta riepilogativa dei servizi acquistati (senza evidenza separata dell’imposta), puoi contattare telefonicamente il Servizio Clienti 119, che provvederà a dar seguito alla lavorazione.#Riceverai quindi al tuo indirizzo mail o al tuo domicilio, un documento riepilogativo, valido ai fini fiscali, per le operazioni di ricarica, canoni addebitati su carta di credito di offerte domiciliate, con o senza prodotto rateizzato, traffico roaming addebitato su carta di credito per un periodo pregresso fino a 6 mesi antecedenti alla richiesta.##Se sei in possesso dei requisiti previsti dalla normativa vigente, puoi richiedere la fattura con evidenza separata dell’imposta.#In tal caso, è necessario compilare ed inviare il modulo online di “Richiesta di emissione fattura” che potrai raggiungere dalla sezione MODULI selezionando la voce “Clienti Ricaricabili”.##La richiesta di fattura con evidenza separata dell’IVA deve essere presentata entro 24 ore dal momento dell''acquisto della TIM Card, della ricarica o dall’avvenuto addebito del canone.', 5),
(9, 'Controllare il credito residuo della tua ricaricabile TIM tramite chiamata', 'Se il gestore locale supporta il servizio di Chiamata Diretta, puoi chiamare il 40916 anche se sei a credito zero.#Se hai ancora credito residuo puoi utilizzare il servizio 40916 tramite SMS inviando un messaggio gratuito al 40916 con la sintassi ''CREDITO''.#Direttamente da pc online entrando nella sezione MyTIM Mobile.', 7),
(10, 'Controllare il credito residuo online', 'Dal telefonino sul sito TIM.it ottimizzato per il tuo smartphone, oppure attraverso l’App MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android. Se vuoi sapere quanto costa navigare in Internet quando sei all''estero, puoi consultare la sezione costi della navigazione in Internet col telefonino o col pc. In questo caso infatti, per la visualizzazione delle informazioni, sosterrai i costi e le condizioni normalmente applicate al traffico dati in roaming.', 7),
(11, 'library a disposizione', 'Con TIMgames avrai a disposizione una library di oltre 1500 giochi, aggiornata ogni settimana con nuovi titoli e giochi in offerta presenti nell’area promozioni dello store.', 8),
(12, 'contenuti accessibili da App', 'TIMgames èaccessibile sia da App (scaricabile da Google Play) che da browser dal sito. L’utente può scegliere la modalità di acquisto preferita tra on demand e abbonamento.#In particolare:#On demand: a partire da 0,49€, acquistando e scaricando un gioco sul proprio telefonino;##In abbonamento: con I Love Games Promo, a soli 2€ a settimana si possono scaricare senza limiti tutti i giochi presenti su TIMgames. Il primo mese è in promozione a solo 1€ a settimana.', 8),
(13, 'Clienti Ricaricabili', 'chiamando il numero gratuito 40916 e seguendo la voce guida\r\n', 9),
(14, 'Tramite SMS', 'inviando un SMS gratuito al numero 40916 con il testo ILOVEGAMESPROMO OFF\r\n', 9),
(15, 'Chi può usufruire del servizio?', 'TIMmusic è la piattaforma di musica digitale di Telecomitalia dedicata a tutti i clienti che hanno uno smartphone/tablet TIM o una linea ADSL o Fibra  residenziale Telecom Italia o una chiavetta Internet TIM.', 10),
(16, 'Quali sono le potenzialità?', 'Con TIMmusic puoi ascoltare milioni di brani in streaming senza limiti di tempo sul tuo smartphone e tablet o sul PC (clienti ADSL e Fibra Residenziale Telecom Italia o con chiavetta Internet TIM). Puoi  creare tue playlist personali o ascoltare quelle suggerite da dj e artisti famosi e condividere tutto sui principali social network. Il catalogo è sempre aggiornato con tutte le ultime uscite discografiche, spesso anche in anteprima esclusiva. E , se sei su mobile, non consumi GB perchè il traffico dati per l’ascolto di musica è incluso nel costo dell’abbonamento.', 10),
(17, 'Attivare il servizio', 'Se sei un cliente TIM puoi attivare l’abbonamento per Smarthone e Tablet direttamente nella sezione “Abbonamento” della App. Per iOS occorre accedere dallo smartphone o  tablet a timmusic.it.##Si puo’ attivare TIMmusic anche presso i negozi TIM, chiamando il 40916 (seguendo la voce guida) o da tim.it (anche per chiavetta TIM).', 11),
(18, 'Se ho una linea ADSL?', 'Se sei un cliente con una linea ADSL o Fibra  residenziale Telecom Italia puoi attivare l’Abbonamento TIMmusic per fruirne su PC, da  sito timmusic.it,  dal sito tim.it oppure chiamando il 187.', 11),
(19, 'Leggere su Tablet', 'Per sfogliare eBook e Magazine sul tuo Tablet, bisogna scaricare l''App TIMreading da Google Play® (per terminali Android) o da Apple AppStore® (per terminali iOs). Inserisci le tue credenziali TIMreading ed Adobe: troverai i magazine e gli ebook acquistati in «La mia Edicola» e «La mia Libreria» pronti per essere scaricati e sfogliati.', 12),
(20, 'Leggere su Smartphone', 'Puoi sfogliare sul tuo Smartphone gli eBook acquistati su TIMreading e buona parte dei quotidiani disponibili.#Per leggere gli eBook, è necessario scaricare l''App TIMreading da Google Play® da Apple AppStore.#Inserisci le tue credenziali TIMreading ed Adobe: troverai gli ebook acquistati in «La mia Libreria» pronti per essere scaricati e sfogliati.#I quotidiani, invece, possono essere sfogliati sul sito mobile o sull’App del giornale che hai acquistato.', 12),
(21, 'Come inserire l’Adobe ID', 'Una volta completata questa procedura l''applicazione verifica i libri e i magazine acquistati, che saranno presenti in “La mia Libreria” e “La mia Edicola”, pronti per essere scaricati e letti.###L''applicazione Android consente anche di acquistare eBook e Magazine (i Magazine solo da Tablet) cliccando sul tasto SHOP.\r\n\r\n', 13),
(22, 'Funzionalità dell’App TIMreading', 'Cerca e acquista nuovi contenuti direttamente dall’app e scarica i contenuti con un tap#Aggiungi note e segnalibri, ricerca il testo all’interno del libro o della rivista ed aumenta il carattere#Puoi registrare il tuo account direttamente in app#Se sei connesso alla rete mobile o in WIFI puoi creare le tue cartelle personali per spostare libri e riviste e puoi ordinarli, filtrarli ed effettuarne la ricerca#Provi lo sfoglio scaricando eBook e Magazine in “Gratis per te”#Ritrovi le letture più recenti in “Ultime letture”#Puoi archiviare i tuoi contenuti per liberare la memoria del tuo dispositivo', 13),
(23, 'Cosa posso trovare nella sezione FREE', 'Nella sezione FREE TV trovi Replay TV, WEB TV e gli Archivi LA7 e MTV.##In Replay TV hai a disposizione tutta la programmazione della settimana precedente delle principali retie Rai (da tutti i dispositivi escluso streaming da web), La 7 e MTV.##Nella Web TV accedi ai titoli video del Web, distribuiti gratuitamente su Internet. I contenuti video sono organizzati in tante sezioni tematiche per una ricerca più rapida e possono essere distribuiti in modalità live e in differita.', 14),
(24, 'Cosa posso trovare nella sezione Videostore', 'Nella sezione Videostore, puoi noleggiare per 48 ore o acquistare scegliendo tra un catalogo di oltre 2.500 titoli tra le migliori novità cinematografiche, con comodo addebito in fattura della linea fissa TIM o con carta di credito. Nella sezione Videostore - I miei acquisti si trovano tutti i titoli acquistati/noleggiati ancora disponibili per la visione.###Per i clienti TIMvision è previsto un grande film novità in regalo ogni mese, anche in HD. Per scegliere il film in regalo, è sufficiente accedere alla sezione “Promo per Te” presente nel Videostore. La promo è valida fino al 30 Settembre 2015. Potrai noleggiare gratuitamente, un film, normalmente offerto a pagamento, tra i migliori selezionati dalla redazione di TIMvision e aggiornati ogni mese.', 14),
(25, 'Collegare il decoder TIMvision alla linea ADSL/Fibra', 'Una volta connesso il decoder alla rete, potrai configurare un account TIMvision (email e password) dalla sezione Profilo/Modifica Account. In tal modo potrai utilizzare le credenziali per accedere su altri dispositivi compatibili TIMvision e vedere i titoli inclusi nell’abbonamento. Tali dati saranno sempre visualizzabili nella sezione Profilo/I Miei Dati', 15),
(26, 'Se sto accedendo dalla Smart TV', 'Se stai accedendo dalla tua Smart TV per completare la registrazione potrebbe esserti richiesto di cliccare su un link inviato alla mail da te scelta. Ti consigliamo di farlo immediatamente per poter fruire quindi del servizio TIMvision nella sua completezza. Ricordati che la username (indirizzo email) e la password scelte dovranno essere inserite al primo accesso successivo sul tuo Smart TV per effettuare il login. Poi non ti saranno più richieste, a meno che tu non esegua il logout.#Se stai accedendo dal tuo tablet/smartphone o da timvision.it entra in REGISTRATI. Le credenziali scelte dovranno inoltre essere utilizzate per autenticarsi su tutti i dispositivi compatibili con TIMvision.\r\n\r\n', 15),
(27, 'Richiedere il servizio SOSsmartphone ', 'contattare il numero 0458214811 (chiamata a pagamento in base al proprio piano tariffario/offerta);#scaricare l’App SOS Smartphone da APP Store (per iOS) e Google Play (per Android) e richiedere l’intervento.#Il servizio SOSsmartphone prevede un costo ad intervento a partire da 3€ (IVA inclusa). L’importo sarà addebitato in fattura se sei un cliente con Abbonamento mentre sarà scalato dal credito residuo se sei un cliente Ricaricabile.#Dal 12 maggio inoltre il servizio SOSsmartphone è disponibile anche in abbonamento a 2€/mese. In questo modo avrai l’assistenza di cui hai bisogno sempre disponibile e completa per un anno.', 16),
(28, 'Voglio un nuovo Smartphone', 'Vuoi un nuovo smartphone?#Portaci il tuo vecchio telefono, da oggi vale uno sconto sul nuovo!#Con il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet.  Ricevi subito uno sconto da utilizzare come meglio desideri: per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM. Il servizio è aperto a tutti!', 17),
(29, 'Attivazione', 'Dopo aver richiesto Memotel al Servizio Clienti 187:##per attivare il servizio : digita * 63 # #per disattivare il servizio digita # 63 #', 18),
(30, 'Attivazione', 'Dopo aver richiesto Avviso di Chiamata al Servizio Clienti 187:##per attivare il servizio : digita *43# ##per disattivare il servizio : digita #43#', 19),
(31, 'Contenuto della confezione', 'La confezione di Fibra autoinstallante contiene#la scatola del modem Fibra con relativo alimentatore, filtro e i cavi di collegamento #la scatola contenente i due cordless #la guida specifica per Fibra autoinstallante.', 20),
(32, 'Impostazione password del modem', 'Per aumentare la sicurezza del tuo modem e della connessione Internet, ti consigliamo di impostare una password di accesso alla pagina di Gestione.#Per accedere alla Gestione Modem da web, apri il programma di navigazione e digita il seguente indirizzo numerico:  http://192.168.1.1 oppure http://modemtelecom\r\n\r\n', 21),
(33, 'Anteprima, Spam', 'Anteprima##E'' possibile scegliere la modalità di visualizzazione della posta in arrivo.#Clicca sul pulsante  Altro presente nella barra in alto per personalizzare il riquadro di anteprima e scegli se abilitare o disabiliare la visualizzazione dell''anteprima del messaggio di posta selezionato.#Per spostare un''e-mail indesiderata nella cartella Spam , seleziona il messaggio e clicca sul pulsante Spam presente nella barra in alto. In alternativa clicca su Sposta in e poi sulla voce Spam (v.figura). #Se invece vuoi bloccare i messaggi inviati da uno stesso mittente, seleziona l''icona Blocca durante la lettura dell''e-mail o inserisci l''indirizzo del mittente di posta indesiderata nei filtri presenti in Impostazioni > Preferenze mail . ##N.B. I messaggi presenti nella cartella Spam vengono cancellati automaticamente dopo 20 giorni .', 22),
(34, 'Importa', 'E'' possibile esportare direttamente in formato CSV i propri contatti da un altro indirizzo di posta elettronica Alice, Virgilio o Tin.it per poi importarli nella Rubrica , oppure puoi creare un file CSV manualmente.##Puoi realizzare un nuovo file CSV utilizzando un qualsiasi programma per la generazione di testi (es: notepad di Windows) seguendo le regole descritte di seguito:##suddividi in righe il file utilizzando il tasto “ Invio ” o “ Return ” per separare le diverse righe#scrivi nella prima riga i nomi dei campi della Rubrica tra virgolette e#separa i nomi sulla stessa riga con la virgola (,)\r\nin tutte le righe successive alla prima insersci tra virgolette  (“ ”) i valori dei campi per ciascun contatto (nome, email, etc) separati dalla virgola (,)#i dati obbligatori e univoci per ogni contatto devono essere: Nome#visualizzato  ed Email che trovi nell'' area Informazioni essenziali relativa al contatto che vuoi importare.#l’ordine in cui vengono inseriti i valori dei campi per ogni riga deve coincidere con quello dei nomi dei campi nella prima riga.', 23),
(35, 'Led, porte e pulsanti', '1 - Led di Stato del decoder TIMvision : #VERDE: acceso#ROSSO: standby#VERDE lampeggiante: aggiornamento in corso (non spegnere o scollegare da Internet)#ROSSO lampeggiante: condizione d''errore; contattare il Numero Verde 800.187.800 #2 - Ricevitore infrarossi per il telecomando', 24),
(36, 'Errori 00003 - 00004', 'Errori 00003 - 00004 #ChiudiCondividiStampa##Se durante la visione dei contenuti, visualizzi:##ERRORE 00003 - NESSUN SEGNALE#ERRORE 00004 - CANALE NON SUPPORTATO O NON ESISTENTE#verifica il cavo dell''antenna, riprova a selezionare il canale desiderato o un altro canale ed eventualmente effettua la scansione dei canali.##Se continui a riscontrare il problema, clicca sul pulsante per inoltrare una segnalazione all''Assistenza Tecnica.', 25),
(37, 'Configurazione di Rete su Windows 7', 'Windows 7 è predisposto, per la connessione Internet, per l''acquisizione automatica dell''indirizzo IP da router.##Se hai sottoscritto un abbonamento ADSL con profilo flat e se sul tuo PC è presente una scheda di rete LAN, per navigare è sufficiente collegare il cavo Ethernet del modem Telecom Italia all''ingresso di rete LAN del PC.\r\n\r\n', 26),
(38, 'Configurazione proxy', 'Il problema di navigazione potrebbe dipendere dalla configurazione errata del server proxy sul tuo programma per navigare in Internet (browser).##Per navigare correttamente è necessario che il proxy sia disabilitato.##Scegli il tuo browser tra quelli riportati di seguito e segui le indicazioni per verificare la configurazione del proxy.', 27),
(39, 'Microsoft® Windows® 8, 8.1 ', 'Supporto sia per la versione a 32-bit che per la versione a 64-bit con:##Processore a 2 GHz o superiore#2 GB di memoria RAM per 32-bit / 4 GB di memoria RAM per 64-bit#250MB di spazio libero sull’hard disk', 28),
(40, 'Total Security', 'Per installare Total Security assicurati che il PC sia connesso ad Internet e esegui il download del software dall''area dedicata presente all''interno della tua Alice Mail come indicato:#inserisci username e password della casella di posta e clicca su Entra, #clicca sul pulsante Strumenti, #in corrispondenza della voce Total Security premi il bottone Gestisci,\r\npremi il pulsante Scarica per avviare il download.\r\n', 29),
(41, 'Come leggo la fattura della linea fissa?', 'Nella prima pagina trovi:##i dati principali dell’intestatario della linea di casa e della fattura#il riepilogo degli abbonamenti attivi #un box informativo con le proposte commerciali personalizzate relative a  offerte, prodotti, servizi #l’informazione sulla modalità di pagamento (bollettino, addebito su conto corrente o su carta di credito)#lo stato dei pagamenti#una guida veloce che riporta, attraverso semplici icone, i riferimenti per entrare in contatto con TIM: App MyTIM Fisso per Smartphone e Tablet, sito www.tim.it (registrandoti alla sezione MyTIM Fisso), Social Network (Facebook, Youtube, Twitter, Google+), Servizio clienti 187, Negozi TIM.', 36),
(42, 'Sono presenti offerte e bonus ', '1. Minuti, sms, GB inclusi nell’offerta attiva;##2. Bonus in euro con scadenza;##3. Credito residuo.\r\n\r\n', 37),
(43, 'Come posso visualizzare la mia fattura?', 'Il ”mio conto" è il servizio gratuito che TIM ti offre per visualizzare la tua fattura di linea fissa direttamente online, prima ancora che sia recapitata a casa via posta.#Con "Il mio Conto" puoi scegliere di non ricevere più il tuo conto TIM in versione cartacea, risparmiando così le spese di spedizione.#Visualizzare "Il mio conto" è molto semplice:#basta registrarsi e, se lo desideri, selezionare l’opzione di eliminazione dell’invio cartaceo della fattura. Se non sei registrato, registrati ora.##Ogni mese sarai avvisato via e-mail o sms che la tua ultima fattura emessa è disponibile nella sezione MyTIM Fisso.', 38);

-- --------------------------------------------------------

--
-- Struttura della tabella `Img_Dev`
--

CREATE TABLE IF NOT EXISTS `Img_Dev` (
  `idImg_Dev` int(11) NOT NULL AUTO_INCREMENT,
  `immaginiID` int(11) NOT NULL,
  `devicesID` int(11) NOT NULL,
  PRIMARY KEY (`idImg_Dev`),
  KEY `fkid_immagini_idx` (`immaginiID`),
  KEY `fkid_devices_idx` (`devicesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

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
(26, 77, 8),
(27, 78, 8),
(28, 79, 8),
(29, 80, 10),
(30, 81, 10),
(31, 82, 10),
(32, 83, 10),
(33, 84, 10),
(34, 85, 10),
(35, 86, 10),
(36, 87, 10),
(38, 89, 11),
(39, 90, 11),
(40, 91, 11),
(41, 92, 11),
(42, 93, 11),
(43, 94, 11),
(44, 95, 11),
(45, 96, 11),
(46, 97, 12),
(47, 98, 12),
(48, 99, 12),
(49, 100, 12),
(50, 101, 12),
(51, 102, 12),
(52, 103, 12),
(53, 104, 12),
(54, 105, 12),
(55, 106, 9),
(56, 107, 9),
(57, 108, 9),
(58, 109, 9),
(59, 110, 9),
(60, 111, 9),
(61, 112, 9),
(62, 113, 9),
(63, 114, 13),
(64, 115, 13),
(65, 116, 14),
(66, 117, 18),
(67, 118, 19),
(68, 119, 20),
(69, 120, 21),
(70, 121, 22),
(71, 122, 23),
(72, 123, 24),
(73, 124, 25),
(74, 125, 26),
(75, 126, 27),
(76, 127, 28),
(77, 128, 28),
(78, 129, 28),
(79, 130, 29),
(80, 131, 29),
(81, 132, 29),
(82, 133, 29),
(83, 134, 29),
(84, 135, 29),
(85, 136, 30),
(86, 137, 30),
(87, 138, 30),
(88, 139, 30),
(89, 140, 30),
(90, 141, 30),
(91, 142, 31),
(92, 143, 31),
(93, 144, 31),
(94, 145, 31),
(95, 146, 31),
(96, 147, 31),
(97, 148, 31),
(98, 149, 31),
(99, 150, 31),
(100, 151, 32),
(101, 152, 32),
(102, 153, 33),
(103, 154, 33),
(104, 155, 33),
(105, 156, 33),
(106, 157, 34),
(107, 158, 34),
(108, 159, 34),
(109, 160, 34),
(110, 161, 35),
(111, 162, 35),
(112, 163, 35),
(113, 164, 35),
(114, 165, 37),
(115, 166, 37),
(116, 167, 37),
(117, 168, 38),
(118, 169, 39),
(119, 170, 40),
(120, 171, 41),
(121, 172, 42),
(122, 173, 43),
(123, 174, 44),
(124, 175, 45),
(125, 176, 47),
(126, 177, 49),
(127, 178, 15),
(128, 179, 15),
(129, 180, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `Immagini`
--

CREATE TABLE IF NOT EXISTS `Immagini` (
  `idImmagini` int(11) NOT NULL AUTO_INCREMENT,
  `percorso` text NOT NULL,
  `coloriID` int(11) NOT NULL,
  PRIMARY KEY (`idImmagini`),
  KEY `fki_colori_idx` (`coloriID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=181 ;

--
-- Dump dei dati per la tabella `Immagini`
--

INSERT INTO `Immagini` (`idImmagini`, `percorso`, `coloriID`) VALUES
(1, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-1.jpg', 5),
(2, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-2.jpg', 5),
(3, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-3.jpg', 5),
(4, 'data/s_t/iphone6s/argento/apple-iPhone6s_Svr-4.jpg', 5),
(5, 'data/s_t/iphone6s/argento_siderale/apple-iPhone6s_SpGry-1.jpg', 4),
(6, 'data/s_t/iphone6s/argento_siderale/apple-iPhone6s_SpGry-2.jpg', 4),
(7, 'data/s_t/iphone6s/argento_siderale/apple-iPhone6s_SpGry-3.jpg', 4),
(8, 'data/s_t/iphone6s/argento_siderale/apple-iPhone6s_SpGry-4.jpg', 4),
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
(32, 'data/s_t/facilemaxi/bianco/slider_cordless_facile_maxi_1.jpg', 1),
(77, 'data/tablet/acericoniaw4821/nero/neroacer-iconia-w4-grigio-1.jpg', 2),
(78, 'data/tablet/acericoniaw4821/nero/neroacer-iconia-w4-grigio-2.jpg', 2),
(79, 'data/tablet/acericoniaw4821/nero/neroacer-iconia-w4-grigio-3.jpg', 2),
(80, 'data/s_t/sonyxperiax/oro_lime/sony-xperia-x-limegld-back.jpg', 7),
(81, 'data/s_t/sonyxperiax/oro_lime/sony-xperia-x-limegld-double.jpg', 7),
(82, 'data/s_t/sonyxperiax/oro_lime/sony-xperia-x-limegld-front.jpg', 7),
(83, 'data/s_t/sonyxperiax/oro_lime/sony-xperia-x-limegold-3_4sx.jpg', 7),
(84, 'data/s_t/sonyxperiax/bianco/sony-xperia-x-wht3_4sx.jpg', 1),
(85, 'data/s_t/sonyxperiax/bianco/sony-xperia-x-wht-back.jpg', 1),
(86, 'data/s_t/sonyxperiax/bianco/sony-xperia-x-wht-double.jpg', 1),
(87, 'data/s_t/sonyxperiax/bianco/sony-xperia-x-wht-front.jpg', 1),
(89, 'data/s_t/lgg5/argento/LG_G5_silver_01_1.jpg', 5),
(90, 'data/s_t/lgg5/argento/LG_G5_silver_01_1.jpg', 5),
(91, 'data/s_t/lgg5/argento/LG_G5_silver_03.jpg', 5),
(92, 'data/s_t/lgg5/argento/LG_G5_silver_03.jpg', 5),
(93, 'data/s_t/lgg5/argento/LG_G5_silver_04.jpg', 5),
(94, 'data/s_t/lgg5/nero/LG_G5_titan_01_1.jpg', 2),
(95, 'data/s_t/lgg5/nero/LG_G5_titan_03.jpg', 2),
(96, 'data/s_t/lgg5/nero/LG_G5_titan_04.jpg', 2),
(97, 'data/s_t/samsunggalaxyj5/oro_rosa/sgh-galaxy-j5_6-goldback.jpg', 6),
(98, 'data/s_t/samsunggalaxyj5/oro_rosa/sgh-galaxy-j5_6-goldback.jpg', 6),
(99, 'data/s_t/samsunggalaxyj5/oro_rosa/sgh-galaxy-j5_6-goldfront.jpg', 6),
(100, 'data/s_t/samsunggalaxyj5/bianco/sgh-galaxy-j5_6-wht3_4dx.jpg', 1),
(101, 'data/s_t/samsunggalaxyj5/bianco/sgh-galaxy-j5_6-whtback.jpg', 1),
(102, 'data/s_t/samsunggalaxyj5/bianco/sgh-galaxy-j5_6-whtfront.jpg', 1),
(103, 'data/s_t/samsunggalaxyj5/nero/sgh-galaxy-j5_6-blk3_4dx.jpg', 2),
(104, 'data/s_t/samsunggalaxyj5/nero/sgh-galaxy-j5_6-blkback.jpg', 2),
(105, 'data/s_t/samsunggalaxyj5/nero/sgh-galaxy-j5_6-blkfront.png', 2),
(106, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-1_2.jpg', 1),
(107, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-2.jpg', 1),
(108, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-2.jpg', 1),
(109, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-3_0.jpg', 1),
(110, 'data/s_t/lumia950/bianco/microsoft-LUMIA950_wht-4.jpg', 1),
(111, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-1_0.jpg', 2),
(112, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-2.jpg', 2),
(113, 'data/s_t/lumia950/nero/microsoft-LUMIA950_blk-4.jpg', 2),
(114, 'data/s_t/lgk8/bianco/lg-k8-4g-indigowhite-01.jpg', 1),
(115, 'data/s_t/lgk8/blu/lg-k8-4g-indigoblue-01.jpg', 9),
(116, 'data/s_t/huaweip9/argento/huawei-p9-silver-01.jpg', 5),
(117, 'data/m_n/chiavettatim42.2/nocolor/TIM-Pack-M-Chiavetta-42-760x760.jpg', 10),
(118, 'data/m_n/fritz!wlanrepeater/nocolor/slider-repeater-fritz-1750e-01.jpg', 10),
(119, 'data/m_n/modemadslwi/nocolor/slider-modem-adsl-new-front.jpg', 10),
(120, 'data/m_n/modemfibra/nocolor/prodotti_modem_fibra_tim_01.jpg', 10),
(121, 'data/m_n/modemwi/nocolor/modem_42.2_760x760_v2.png', 10),
(122, 'data/m_n/powerlineadapter/nocolor/PowerlineAdapter-1.png', 10),
(123, 'data/m_n/tecnowareeraplus9/nocolor/slider_era_plus_900_tecnoware_1.jpg', 10),
(124, 'data/m_n/timmodemwi/nocolor/80811_TIM_Pack_WiFi_Car.jpg', 10),
(125, 'data/m_n/wi/nocolor/wifi-bridge-technicolor_01.jpg', 10),
(126, 'data/m_n/repeaterwi/nocolor/slider-repeater-zyxel-ac750-front.jpg', 10),
(127, 'data/tablet/alcatelpixi310/bianco/PIXI-3-(10)-3G_WHITE_front-front_landscape_760x760.jpg', 1),
(128, 'data/tablet/alcatelpixi310/bianco/PIXI-3-(10)-3G_WHITE_front-angled-left_portrait_760x760.jpg', 1),
(129, 'data/tablet/alcatelpixi310/nero/PIXI-3-(10)-3G_Volcano-Black_front-angled-right_portrait_760x760.jpg', 2),
(130, 'data/tablet/appleipadmini3/argento/ipad-mini-3-silver-1.jpg', 5),
(131, 'data/tablet/appleipadmini3/argento/ipad-mini-3-silver-3.jpg', 5),
(132, 'data/tablet/appleipadmini3/nero/ipad-mini-3-space-gray-1.jpg', 2),
(133, 'data/tablet/appleipadmini3/nero/ipad-mini-3-space-gray-3.jpg', 2),
(134, 'data/tablet/appleipadmini3/oro/ipad-mini-3-gold-1.jpg', 3),
(135, 'data/tablet/appleipadmini3/oro/ipad-mini-3-gold-3.jpg', 3),
(136, 'data/tablet/appleipadmini4/bianco/slider-ipad-mini-4-white-2.jpg', 1),
(137, 'data/tablet/appleipadmini4/bianco/slider-ipad-mini-4-white-3.jpg', 1),
(138, 'data/tablet/appleipadmini4/nero/slider-ipad-mini-4-spacegrey-2.jpg', 2),
(139, 'data/tablet/appleipadmini4/nero/slider-ipad-mini-4-spacegrey-3.jpg', 2),
(140, 'data/tablet/appleipadmini4/oro/slider-ipad-mini-4-gld-2.jpg', 3),
(141, 'data/tablet/appleipadmini4/oro/slider-ipad-mini-4-gld-3.jpg', 3),
(142, 'data/tablet/appleipadpro9.7/argento/APPLE_IPAD_97_silver_03.jpg', 5),
(143, 'data/tablet/appleipadpro9.7/argento/APPLE_IPAD_97_silver_04.jpg', 5),
(144, 'data/tablet/appleipadpro9.7/nero/APPLE_IPAD_97_spacegrey_03.jpg', 2),
(145, 'data/tablet/appleipadpro9.7/nero/APPLE_IPAD_97_spacegrey_04.jpg', 2),
(146, 'data/tablet/appleipadpro9.7/nero/APPLE_IPAD_97_spacegrey_04.jpg', 2),
(147, 'data/tablet/appleipadpro9.7/oro/APPLE_IPAD_97_gold_03.jpg', 3),
(148, 'data/tablet/appleipadpro9.7/oro/APPLE_IPAD_97_gold_04.jpg', 3),
(149, 'data/tablet/appleipadpro9.7/oro_rosa/apple-ipad-pro-97-rosegold-04.jpg', 6),
(150, 'data/tablet/appleipadpro9.7/oro_rosa/apple-ipad-pro-97-rosegold-03.jpg', 6),
(151, 'data/tablet/huaweimediapad104g/nocolor/huawei-mediapad-10-link-plus-1.jpg', 10),
(152, 'data/tablet/huaweimediapad104g/nocolor/huawei-mediapad-10-link-plus-3.jpg', 10),
(153, 'data/tablet/samsunggalaxytaba/bianco/samsung-galaxy-tab-a-9.7-white-1.jpg', 1),
(154, 'data/tablet/samsunggalaxytaba/bianco/samsung-galaxy-tab-a-9.7-white-2.jpg', 1),
(155, 'data/tablet/samsunggalaxytaba/nero/SAMSUNG_T555_Black_01_1.jpg', 2),
(156, 'data/tablet/samsunggalaxytaba/nero/SAMSUNG_T555_Black_03.jpg', 2),
(157, 'data/tablet/samsunggalaxytabs2/nero/samsung_galaxy_tab_S2_black-1.png', 2),
(158, 'data/tablet/samsunggalaxytabs2/nero/samsung_galaxy_tab_S2_black-2.png', 2),
(159, 'data/tablet/samsunggalaxytabs2/oro/samsung_galaxy_tab_S2_gold-1.png', 3),
(160, 'data/tablet/samsunggalaxytabs2/oro/samsung_galaxy_tab_S2_gold-2.png', 3),
(161, 'data/tablet/samsunggalaxytabpr/nocolor/0_start_001_front_black.jpg', 10),
(162, 'data/tablet/samsunggalaxytabpr/nocolor/0_start_002_back_black.jpg', 10),
(163, 'data/tablet/samsunggalaxytabpr/nocolor/0_start_011_side_black.jpg', 10),
(164, 'data/tablet/samsunggalaxytabpr/nocolor/0_start_012_front3_black.jpg', 10),
(165, 'data/tablet/galaxyview18.4/nocolor/Samsung-Galaxy-View-White_Front_760x760.jpg', 10),
(166, 'data/tablet/galaxyview18.4/nocolor/Samsung-Galaxy-View-White_Angle-1_760x760.jpg', 10),
(167, 'data/tablet/galaxyview18.4/nocolor/Samsung-Galaxy-View-White_Angle-2_760x760.jpg', 10),
(168, 'data/tablet/wer@home/nocolor/prodotti_slider_werathome_01.jpg', 10),
(169, 'data/tablet/videocamerad/nocolor/ipcam-motorizzata-01.jpg', 10),
(170, 'data/tablet/timtag/nocolor/timtag-newlogo_1.jpg', 10),
(171, 'data/tablet/d/nocolor/DLinkHD.jpg', 10),
(172, 'data/tablet/applewatchsport38/nocolor/apple-watch38_black_01.jpg', 10),
(173, 'data/tablet/packtimvision&chrom/nocolor/CHROMECAST-1.jpg', 10),
(174, 'data/tablet/cassanokiamd12/nocolor/Nokia-md-12_760x760.png', 10),
(175, 'data/tablet/smarttv+soundboard/nocolor/samsung_smart_tv_50JU6400_slider_2.jpg', 10),
(176, 'data/tablet/samsunggalaxygear/nocolor/samsung-galaxy-gear-s-2_0.jpg', 10),
(177, 'data/tablet/decodertimvision/nocolor/prodotti_slider_decoder_timvision_01.jpg', 10),
(178, 'data/s_t/huaweip9plus/nocolor/huawei-p9-plus-qrtzgry-front.jpg', 10),
(179, 'data/s_t/huaweip9plus/nocolor/huawei-p9-plus-qrtzgry-3_4dx.jpg', 10),
(180, 'data/s_t/huaweip9plus/nocolor/huawei-p9-plus-qrtzgry-back.jpg', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `Marca`
--

CREATE TABLE IF NOT EXISTS `Marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dump dei dati per la tabella `Marca`
--

INSERT INTO `Marca` (`idMarca`, `nome`) VALUES
(9, 'Acer'),
(21, 'Alcatel'),
(1, 'Apple'),
(3, 'BlackBerry'),
(23, 'D-Link'),
(22, 'Essence'),
(15, 'FRITZ!'),
(4, 'Huawei'),
(11, 'LG'),
(10, 'Microsoft'),
(18, 'nessuna'),
(5, 'Nokia'),
(2, 'Samsung'),
(6, 'Sony'),
(19, 'Technicolor'),
(17, 'Tecnoware'),
(8, 'TIM'),
(24, 'TIM+Google'),
(7, 'ZTE'),
(20, 'ZyXEL');

-- --------------------------------------------------------

--
-- Struttura della tabella `Memoria`
--

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
-- Struttura della tabella `Mem_Dev`
--

CREATE TABLE IF NOT EXISTS `Mem_Dev` (
  `idMem_Dev` int(11) NOT NULL AUTO_INCREMENT,
  `memoriaID` int(11) NOT NULL,
  `devicesID` int(11) NOT NULL,
  PRIMARY KEY (`idMem_Dev`),
  KEY `fkmd_devicesID_idx` (`devicesID`),
  KEY `fkmd_memoriaID_idx` (`memoriaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `Mem_Dev`
--

INSERT INTO `Mem_Dev` (`idMem_Dev`, `memoriaID`, `devicesID`) VALUES
(1, 1, 1),
(2, 4, 5),
(3, 5, 6),
(4, 2, 8),
(5, 2, 1),
(7, 3, 1),
(8, 4, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `Schermo`
--

CREATE TABLE IF NOT EXISTS `Schermo` (
  `idSchermo` int(11) NOT NULL AUTO_INCREMENT,
  `dimensione` decimal(3,1) NOT NULL,
  PRIMARY KEY (`idSchermo`),
  UNIQUE KEY `dimensioni_UNIQUE` (`dimensione`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `Schermo`
--

INSERT INTO `Schermo` (`idSchermo`, `dimensione`) VALUES
(8, '0.0'),
(7, '1.8'),
(4, '4.7'),
(5, '5.0'),
(1, '8.0'),
(2, '9.7'),
(3, '10.0'),
(9, '12.0'),
(10, '18.4');

-- --------------------------------------------------------

--
-- Struttura della tabella `SisOp`
--

CREATE TABLE IF NOT EXISTS `SisOp` (
  `idSisOp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  PRIMARY KEY (`idSisOp`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `SisOp`
--

INSERT INTO `SisOp` (`idSisOp`, `nome`) VALUES
(1, 'Android'),
(2, 'iOS'),
(4, 'nessuno'),
(3, 'Windows');

-- --------------------------------------------------------

--
-- Struttura della tabella `SLS`
--

CREATE TABLE IF NOT EXISTS `SLS` (
  `idSLS` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `categoriaID` int(11) NOT NULL,
  `descrizione` mediumtext NOT NULL,
  `img` mediumtext NOT NULL,
  `sub` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idSLS`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  KEY `fks_categoria_idx` (`categoriaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dump dei dati per la tabella `SLS`
--

INSERT INTO `SLS` (`idSLS`, `nome`, `categoriaID`, `descrizione`, `img`, `sub`) VALUES
(1, 'TV & Entertainment', 9, 'SERIE TV, FILM, MUSICA, LIBRI, GIOCHI E CALCIO.\nScopri il tipo di intrattenimento che preferisci.\n', 'data/sls/01-tv-entertainment.jpg', 1),
(10, 'Salute e Benessere', 10, 'Prova gli ultimi wearables. Scopri come salute e benessere possono cambiare in meglio la tua vita.\r\nLibera la tua voglia di movimento. Condividi con gli amici i tuoi risultati. Il futuro è smart.', 'data/sls/02-salute-benessere.jpg', 1),
(11, 'Casa e Famiglia', 11, 'Smart Life vuol dire anche una vita più semplice e sicura.\r\nAnche per la tua casa e i tuoi cari.', 'data/sls/03-casa-famiglia.jpg', 1),
(12, 'Servizi alla Persona', 12, 'Un nuovo approccio al mondo dell’ e-payment e dell’identità digitale.\r\nPotrai organizzare e gestire con semplicità e in tutta sicurezza i tuoi pagamenti digitali, il tuo archivio personale,\r\ncustodire le password, le fatture, gli scontrini ed i referti medici.', 'data/sls/04-tim-personal.jpg', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `SubSLS`
--

CREATE TABLE IF NOT EXISTS `SubSLS` (
  `idSubSLS` int(11) NOT NULL AUTO_INCREMENT,
  `SLSID` int(11) NOT NULL,
  `img_testata` mediumtext NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descrizione` mediumtext NOT NULL,
  `testo_contenuti` longtext NOT NULL,
  `img_contenuti` mediumtext NOT NULL,
  PRIMARY KEY (`idSubSLS`),
  KEY `fkssls_sls_idx` (`SLSID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dump dei dati per la tabella `SubSLS`
--

INSERT INTO `SubSLS` (`idSubSLS`, `SLSID`, `img_testata`, `nome`, `descrizione`, `testo_contenuti`, `img_contenuti`) VALUES
(1, 1, 'data/sub_sls/tv-entertainment_0.jpg', 'TIMvision', 'Serie tv, cartoni, cinema e documentari dove e quando vuoi', 'TIMvision è la TV sempre on demand di TIM che non ti abbandona mai, senza pubblicità e anche da più dispositivi contemporaneamente. Vedi i tuoi programmi preferiti direttamente su Web e TV Anche su Smartphone e Tablet senza consumare Giga', 'data/sub_sls/device-vision.jpg'),
(2, 1, 'data/sub_sls/bg-head-sky_v5.jpg', 'TIM Sky', 'Internet ultraveloce fino a 100 MEGA, chiamate da fisso e da mobile, Sky senza parabola. Da 39,90€/mese', 'C’è un nuovo modo per avere Sky. Basta collegare My Sky alla Fibra o ADSL veloce. Senza installare la parabola.##Sky TV: L’offerta più completa di serie TV su Sky Atlantic e Fox, con le serie più seguite e premiate da tutto il mondo e le grandi produzioni originali Sky.Tanti programmi interessanti di arte, cucina, musica, viaggi, lifestyle, storie dal mondo e grandi eventi dello sport internazionale.Le news dall’Italia e dal mondo di Sky TG24, e gli approfondimenti sportivi 24 ore su 24 di Sky Sport 24.', 'data/sub_sls/2.png'),
(3, 1, 'data/sub_sls/banner-2_1.jpg', 'TIMmusic', 'Entra in un mondo di musica con l''app TIMmusic. Milioni di brani in streaming, tutte le ultime uscite discografiche e tante playlist, da ascoltare dove e quando vuoi, senza consumare GB!', 'Ogni settimana la classifica dei 20 brani più ascoltati su TIMmusic.##Tante playlist create per accompagnare ogni momento della tua giornata.##Tutte le novità discografiche nazionali e internazionali, spesso in anteprima esclusiva', 'data/sub_sls/banner-2_1.jpg'),
(4, 10, 'data\\sub_sls\\i1 (1).jpg', ' Samsung Galaxy Gear S con SIM', '', 'SAMSUNG GALAXY GEAR S CON SIM##Un elegante display Super AMOLED curvo per una vestibilità ottimale, schermate personalizzabili e cinturini intercambiabili per esprimere al meglio il proprio stile', 'data/sub_sls/i1 (2).jpg'),
(6, 10, 'data\\sub_sls\\Heart_rate_RGB_150dpi.jpg', 'Polar Loop H7 HR', '', 'POLAR LOOP H7 HR ##In abbinamento con Polar sensore frequenza Cardiaca. Per chi desidera misurare la propria attività 24 ore su 24 ed essere guidato al raggiungimento di obiettivi giornalieri', 'data/sub_sls/i2.jpg'),
(7, 10, 'data\\sub_sls\\samsung-galaxy-gear-fit-product-photos-14.jpg', 'Samsung Galaxy Gear Fit', '', 'SAMSUNG GALAXY GEAR FIT##Tiene sempre traccia delle attività durante la giornata ed è sempre pronto ad accompagnarti grazie al suo design innovativo, confortevole ed ultraleggero ed in più resistente all’acqua ed alla polvere', 'data/sub_sls/i4.jpg'),
(8, 11, 'data\\sub_sls\\tim_Tag.jpg', 'TIM Tag', '', 'TIM TAG##\r\nTIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.', 'data/sub_sls/tim_Tag - Copia.png'),
(9, 11, 'data/sls/03-casa-famiglia.jpg', 'TIM Home Connect', '', 'TIM HOME CONNECT##La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', 'data/sub_sls/timcasa-zoom_2.png'),
(10, 11, 'data\\sub_sls\\dlink-smarthome.jpg', 'D-Link SmartHome', '', 'D-LINK SMARTHOME##D-Link SmartHome Starter Kit ti offre la possibilità di impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.', 'data/sub_sls/D-LinkHD.jpg'),
(11, 12, 'data\\sub_sls\\CAMBIO SIM.jpg', 'SIM', '', 'SIM##Dalla nascita del sistema di comunicazione radiomobile GSM, è la più promettente applicazione della tecnologia Smart Card. Garantisce la sicurezza di tutte le comunicazioni e garantirà in futuro l''identità personale. TIM è impegnata in primo piano sulle ricerche in questo campo', 'data/sub_sls/sim - Copia.jpg'),
(12, 12, 'data\\sub_sls\\identita-pagamenti.jpg', 'Firma digitale', '', 'FIRMA DIGITALE##La fiducia che una firma digitale deve assicurare è ben superiore a quella della tradizionale firma manuale. Una chiave privata conosciuta solo dalla persona autorizzata a farne uso può servire persino a provarne l''identità. Si attendono sviluppi molto interessanti e TIM è in primo piano', 'data/sub_sls/identita-pagamenti - Copia.jpg'),
(13, 12, 'data\\sub_sls\\digital-or-real.jpg', 'Vita digitale o vita reale?', '', 'VITA DIGITALE O VITA REALE?##Accedere ai servizi, pagare per una sottoscrizione o per un acquisto, le transazioni digitali sono ormai parte della nostra vita quotidiana e si stanno via via diffondendo. L’affidabilità è una componente cruciale. Lo storage di denaro, oltre che di dati personali, può essere più comodo e anche più sicuro', 'data/sub_sls/digital-or-real - Copia.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `SubSls_Dev`
--

CREATE TABLE IF NOT EXISTS `SubSls_Dev` (
  `idsls_dev` int(11) NOT NULL AUTO_INCREMENT,
  `subslsID` int(11) NOT NULL,
  `devID` int(11) NOT NULL,
  PRIMARY KEY (`idsls_dev`),
  KEY `fkssls_subsls_idx` (`subslsID`),
  KEY `fkssls_device_idx` (`devID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `SubSls_Dev`
--

INSERT INTO `SubSls_Dev` (`idsls_dev`, `subslsID`, `devID`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 1, 5),
(4, 4, 47),
(7, 8, 40),
(8, 10, 41);

-- --------------------------------------------------------

--
-- Struttura della tabella `Tipologia`
--

CREATE TABLE IF NOT EXISTS `Tipologia` (
  `idTipologia` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`idTipologia`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dump dei dati per la tabella `Tipologia`
--

INSERT INTO `Tipologia` (`idTipologia`, `nome`) VALUES
(12, 'Accessori'),
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
  ADD CONSTRAINT `fkid_devices` FOREIGN KEY (`devicesID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkid_immagini` FOREIGN KEY (`immaginiID`) REFERENCES `Immagini` (`idImmagini`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Immagini`
--
ALTER TABLE `Immagini`
  ADD CONSTRAINT `fki_colori` FOREIGN KEY (`coloriID`) REFERENCES `Colori` (`idColori`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `Mem_Dev`
--
ALTER TABLE `Mem_Dev`
  ADD CONSTRAINT `fkmd_devicesID` FOREIGN KEY (`devicesID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkmd_memoriaID` FOREIGN KEY (`memoriaID`) REFERENCES `Memoria` (`idMemoria`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `SLS`
--
ALTER TABLE `SLS`
  ADD CONSTRAINT `fks_categoria` FOREIGN KEY (`categoriaID`) REFERENCES `Categoria` (`idCategoria`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `SubSLS`
--
ALTER TABLE `SubSLS`
  ADD CONSTRAINT `fkssls_sls` FOREIGN KEY (`SLSID`) REFERENCES `SLS` (`idSLS`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `SubSls_Dev`
--
ALTER TABLE `SubSls_Dev`
  ADD CONSTRAINT `fkssls_device` FOREIGN KEY (`devID`) REFERENCES `Devices` (`idDevices`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkssls_subsls` FOREIGN KEY (`subslsID`) REFERENCES `SubSLS` (`idSubSLS`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
