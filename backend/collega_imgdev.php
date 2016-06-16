<?php
    
    require "../connessione.php";

    if(isset($_POST["inserisci"])) {
        
        $immagineID = $_POST["immagine"];
        $deviceID = $_POST["device"];
        
        $query = "
            INSERT INTO Img_Dev
            VALUES ('', '".$immagineID."', '".$deviceID."')
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