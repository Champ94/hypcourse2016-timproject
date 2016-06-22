<?php
    
    require "../connessione.php";

    if(isset($_POST["inserisci"])) {
        
        $memoriaID = $_POST["memoria"];
        $deviceID = $_POST["device"];
        
        $query = "
            INSERT INTO Mem_Dev
            VALUES ('', '".$memoriaID."', '".$deviceID."')
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