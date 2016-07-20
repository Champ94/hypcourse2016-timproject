# hypcourse2016-timproject
PoliMi, Hypermedia Application Course 2016: Tim Project

N.B.: Il sito è ottimizzato per Google Chrome e Firefox ed è completamente responsive. Per motivi di tempo la pagina home e la sezione "Chi Siamo", come le pagine di intro alle categorie non sono dinamiche.
Per semplicità di lettura e visualizzazione i file CSS e gli script non sono stati minificati.

DEMO: timwebapp-hypcourse.rhcloud.com
PhoneGap Public Page: https://build.phonegap.com/apps/2176893/share

- Framework usato:
	
		- Bootstrap
		
- Linguaggi usati:

		Lato Client
			- HTML5
			- CSS3
			- JavaScritp (jQuery + Ajax)
			
		Lato Server
			- PHP
            
        + SQL per la gestione del database

- Meta tag usati:
    
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="Tim Project Hypermedia Application Course 2016">
        
- Media queries selectors:
        
        /* Extra small devices (phones, less than 768px) */
        @media(max-width: 767px) { /* code here */ }
        
        /* Small devices (tablets, 768px and up) */
        @media(min-width: 768px) { /* code here */ }
        
        /* Medium devices (desktops, 992px and up) */
        @media(min-width: 992px) { /* code here */ }
        
        /* Large devices (large desktops, 1200px and up) */
        @media(min-width: 1200px) { /* code here */ }

- Guida ai file .css:

        - bootstrap-*.css           	// Framework
        - tim/tim-components.css        // Componenti presenti in ogni pagina (e.g. header, footer)
        - tim/utility-classes.css       // Classi di utilità (e.g. vertical align)
        - tim/nome-pagina.css           // File di style per l'applicazione
        - tim/mobile.css                // Media query per rendere il design responsive

######Backend:
		
Nel backend sono presenti brevi script per l'inserimento dei dispositivi e la generazione automatica di relazioni. Questi ultimi, in particolare, se runnati ancora duplicherebbero relazioni già esistenti.
Per la realizzazione degli script si è usato codice veloce e pratico, non essendo oggetto di valutazione.
		
######Chiamate Ajax

Gli script .php richiamati in Ajax sono contenuti all'interno della cartella "api". Essendo solo letture il metodo generalmente usato è stato il GET.

Di norma all'interno dei file .php richiamati via Ajax bisognerebbe assicurarsi prima dell'esecuzione che sia effettivamente una chiamata di questo tipo. Solitamente si verifica che l'header HTTP_X_REQUESTED_WITH sia presente e sia uguale a "XMLHttpRequest" con una funzione del tipo

```php
    function is_ajax() {
        return isset($_SERVER["HTTP_X_REQUESTED_WITH"]) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == "xmlhttprequest";
    }
```

Tale funzione nel codice è stata omessa e viene sostituita da un controllo su una variabile "action". L'omissione è dovuta al fatto che l'api richiesta si trova su una "origin" diversa (cross-origin) da quella di partenza e l'header non viene mandato (Same-Origin Policy).
Anche tentando di mandarlo forzatamente aggiungendo come proprietà della funzione $.ajax una delle seguenti
    - beforeSend: function(xhr){xhr.setRequestHeader("HTTP_X_REQUESTED_WITH", "xmlhttprequest")
    - headers: {"HTTP_X_REQUESTED_WITH": "xmlhttprequest"}
    - crossDomain: false
La richiesta verrebbe rifiutata, poiché è il server a doverlo settare.

Quindi come workaround si è deciso di inserire sul server nel file .htaccess le seguenti istruzioni (CORS authorization):

```php
    <IfModule mod_headers.c>
        Header set Access-Control-Allow-Origin "*"
        Header set Access-Control-Allow-Headers "Origin, X-Requested-With, Content-Type, Accept"
    </IfModule>
```

che consentono a qualunque fonte esterna di richiamare uno script php. (L'equivalente istruzione in PHP non veniva accettata).

Un'altra possibile soluzione sarebbe stata quella di usare JSONP. Tale metodo viene implementato solo nelle pagine lista_prodotti.html e lista_outlet.html con le dovute modifiche alle rispettive funzioni richiamate nei file .php.

######Extra implementati:

1. Filtri, funzionanti sia nella versione desktop che nella versione mobile. Particolarità della funzione sono i radio-button resi deselezionabili con un apposito codice scritto in JavaScript.

2. Carrello, per ambo le versioni della web app. Non è stata implementata una gestione delle sessioni per questioni di tempo e semplicità nella compatibilità con PhoneGap. Quindi il carrello non ha memoria.

3. Form, presente all'interno del carrello una volta selezionato un prodotto da acquistare. Una volta validato il form con un breve controllo via JavaScript si simula l'acquisto.