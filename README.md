# hypcourse2016-timproject
PoliMi, Hypermedia Application Course 2016: Tim Project

Note alla creazione di nuove pagine

- Inserire nell'head di ogni pagina .html/.php i seguenti meta tag:
    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Tim Project Hypermedia Application Course 2016">
        
- Media queries selectors usati in BS3:
        
        /* Extra small devices (phones, less than 768px) */
        @media(max-width: 767px) { /* code here */ }
        
        /* Small devices (tablets, 768px and up) */
        @media(min-width: 768px) { /* code here */ }
        
        /* Medium devices (desktops, 992px and up) */
        @media(min-width: 992px) { /* code here */ }
        
        /* Large devices (large desktops, 1200px and up) */
        @media(min-width: 1200px) { /* code here */ }

- Guida ai file .css:

        - bootstrap-*.css           // Framework
        - page-components.css       // Componenti presenti in ogni pagina (e.g. header, footer)
        - utility-classes.css       // Classi di utilità (e.g. vertical align)
        - style.css o app.css       // File di style per l'applicazione
        - mobile.css                // Media query per rendere il design responsive