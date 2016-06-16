<?php
    
    require "../connessione.php";

?>
<!DOCTYPE HTML>
<head>
    
    <head>
        
        <title>
            Pagina di caricamento
        </title>
        
        <style>
            
            div {
                width: 450px;
                height: 40px;
            }
            
            select, input, textarea {
                width: 250px;
                max-width: 250px;
                max-height: 30px;
                float: right;
            }
            
        </style>
        
    </head>
    
    <body>
        
        <h1>Inserisci un nuovo dispositivo</h1>
        
        <form action="aggiungi_dispositivo.php" method="post" enctype="multipart/form-data">
            
            <div>
                <label for="categoria">Categoria</label>
                <select id="categoria" name="categoria">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Categoria")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idCategoria.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="marca">Marca</label>
                <select id="marca" name="marca">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Marca")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idMarca.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="nome">Nome</label>
                <input type="text" id="nome" name="nome">
            </div>
            
            <div>
                <label for="prezzo_intero">Prezzo Intero</label>
                <input type="text" id="prezzo_intero" name="prezzo_intero">
            </div>
            
            <div>
                <label for="prezzo_rate">Prezzo a Rate</label>
                <input type="text" id="prezzo_rate" name="prezzo_rate">
            </div>
            
            <div>
                <label for="prezzo_scontato">Prezzo Scontato</label>
                <input type="text" id="prezzo_scontato" name="prezzo_scontato">
            </div>
            
            <div>
                <label for="n_rate">Numero di Rate</label>
                <input type="text" id="n_rate" name="n_rate">
            </div>
            
            <div>
                <label for="promo">Promo?</label>
                <input type="checkbox" id="promo" name="promo" value="1">
            </div>
            
            <div>
                <label for="novita">Novità?</label>
                <input type="checkbox" id="novita" name="novita" value="1">
            </div>
            
            <div>
                <label for="disponibile">Disponibile?</label>
                <input type="checkbox" id="disponibile" name="disponibile" value="1">
            </div>
            
            <div>
                <label for="tipologia">Tipologia</label>
                <select id="tipologia" name="tipologia">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Tipologia")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idTipologia.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="sis_op">Sistema Operativo</label>
                <select id="sis_op" name="sis_op">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM SisOp")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idSisOp.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="schermo">Schermo</label>
                <select id="schermo" name="schermo">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Schermo")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idSchermo.'">'.$value->dimensione.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="connessione">Connessione</label>
                <select id="connessione" name="connessione">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Connessione")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idConnessione.'">'.$value->tipo.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="caratteristiche">Caratteristiche</label>
                <textarea id="caratteristiche" name="caratteristiche"></textarea>
            </div>
            
            <div>
                <label for="descrizione">Descrizione</label>
                <textarea id="descrizione" name="descrizione"></textarea>
            </div>
            
            <div>
                <label for="inclusi">Inclusi</label>
                <textarea id="inclusi" name="inclusi"></textarea>
            </div>
            
            <div>
                <label for="specifiche">Specifiche</label>
                <textarea id="specifiche" name="specifiche"></textarea>
            </div>
            
            <div>
                <label for="memoria">Memoria</label>
                <select id="memoria" name="memoria">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Memoria")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idMemoria.'">'.$value->dimensione.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <input type="submit" name="inserisci" value="Inserisci Dispositivo">
            </div>
            
        </form>
        
        <h1>Inserisci una nuova immagine</h1>
        <h3>Crea anche la relazione nella tabella esterna</h3>
        
        <form action="aggiungi_immagine.php" method="post" enctype="multipart/form-data">
            
            <div>
                <label for="cartella">Nome Cartella</label>
                <input type="text" id="cartella" name="cartella">
            </div>
            
            <div>
                <label for="device">Dispositivo</label>
                <select id="device" name="device">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT idDevices, nome FROM Devices")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idDevices.'-'.$value->nome.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="immagine">Immagine</label>
                <input type="file" id="immagine" name="immagine">
            </div>
            
            <div>
                <label for="colore">Colore</label>
                <select id="colore" name="colore">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Colori")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idColori.'-'.$value->nome.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <input type="submit" name="inserisci" value="Inserisci Immagine">
            </div>
            
        </form>
        
        <h1>Collega immagine inserita a dispositivo</h1>
        
        <form action="collega_imgdev.php" method="post" enctype="multipart/form-data">
            
            <div>
                <label for="immagine">Immagine</label>
                <select id="immagine" name="immagine">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT * FROM Immagini")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idImmagini.'">'.$value->percorso.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <label for="device">Dispositivo</label>
                <select id="device" name="device">
                    <option value=""></option>
                    <?php

                        if($result = mysqli_query($con, "SELECT idDevices, nome FROM Devices")) {
                            while($value = mysqli_fetch_object($result)) {
                                printf('<option value="'.$value->idDevices.'">'.$value->nome.'</option>');
                            }
                        }

                    ?>
                </select>
            </div>
            
            <div>
                <input type="submit" name="inserisci" value="Abbina Img-Dev">
            </div>
            
        </form>
        
    </body>
    
</head>