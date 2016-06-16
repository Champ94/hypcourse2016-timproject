<?php
    
    require "../connessione.php";

    if(isset($_POST["inserisci"])) {
        
        $categoria = $_POST["categoria"];
        $marca = $_POST["marca"];
        $nome = $_POST["nome"];
        $prezzo_intero = $_POST["prezzo_intero"];
        $prezzo_rate = $_POST["prezzo_rate"];
        $prezzo_scontato = $_POST["prezzo_scontato"];
        $n_rate = $_POST["n_rate"];
        if(isset($_POST["promo"]))
            $promo = $_POST["promo"];
        else
            $promo = 0;
        if(isset($_POST["novita"]))
            $novita = $_POST["novita"];
        else
            $novita = 0;
        if(isset($_POST["disponibile"]))
            $disponibile = $_POST["disponibile"];
        else
            $disponibile = 0;
        $tipologia = $_POST["tipologia"];
        $sis_op = $_POST["sis_op"];
        $schermo = $_POST["schermo"];
        $connessione = $_POST["connessione"];
        $caratteristiche = $_POST["caratteristiche"];
        $caratteristiche = mysqli_real_escape_string($con, $caratteristiche);
        $descrizione = $_POST["descrizione"];
        $descrizione = mysqli_real_escape_string($con, $descrizione);
        $inclusi = $_POST["inclusi"];
        $inclusi = mysqli_real_escape_string($con, $inclusi);
        $specifiche = $_POST["specifiche"];
        $specifiche = mysqli_real_escape_string($con, $specifiche);
        $memoria = $_POST["memoria"];
        
        $query = "
            INSERT INTO Devices
            VALUES ('', '".$categoria."', '".$marca."', '".$nome."', '".$prezzo_intero."', '".$prezzo_rate."', '".$prezzo_scontato."', '".$n_rate."', '".$promo."', '".$novita."', '".$disponibile."', '".$tipologia."', '".$sis_op."', '".$schermo."', '".$connessione."', '".$caratteristiche."', '".$descrizione."', '".$inclusi."', '".$specifiche."', '".$memoria."')
        ";
        
        if (mysqli_query($con, $query)) {
            echo "Inserimento avvenuto con successo!<br>";
            echo '<a href="aggiungi.php">Inserisci altri dati!</a>';
        }
        else {
            echo "Errore: " . $query . "<br>" . mysqli_error($con);
        }

        mysqli_close($con);
        
    }
    
?>