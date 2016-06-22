<?php
    
    require "../connessione.php";

    if(isset($_POST["inserisci"])) {
        
        $cartella = $_POST["cartella"];
        $device = explode("-", $_POST["device"]);
        $deviceID = $device[0];
        $nomeDev = $device[1];
        $nomeDev = preg_replace("/\s+/", "", $nomeDev);
        $nomeDev = strtolower($nomeDev);
        $colore = explode("-", $_POST["colore"]);
        $coloreID = $colore[0];
        $coloreDev = $colore[1];
        $coloreDev = preg_replace("/\s+/", "_", $coloreDev);
        $coloreDev = strtolower($coloreDev);
        
        if (!file_exists("../data/".$cartella."/".$nomeDev."/".$coloreDev)) {
            mkdir("../data/".$cartella."/".$nomeDev."/".$coloreDev, 0777, true);
            echo "Directory creata!<br>";
        }
        
        $target_dir = "../data/".$cartella."/".$nomeDev."/".$coloreDev."/";
        $target_file = $target_dir . basename($_FILES["immagine"]["name"]);
        $imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
        
        $check = getimagesize($_FILES["immagine"]["tmp_name"]);
        if($check) {
            if(move_uploaded_file($_FILES["immagine"]["tmp_name"], $target_file)) {
                $immagine = basename($_FILES["immagine"]["name"]);
            }
            else {
                echo "Errore nell'upload dell'immagine!" . PHP_EOL;
                print_r($_FILES);
                exit();
            }
        }
        
        $query = "
            INSERT INTO Immagini
            VALUES ('', '".substr($target_file, 3)."', '".$coloreID."')
        ";
        
        if (mysqli_query($con, $query)) {
            echo "Inserimento avvenuto con successo!<br>";
        }
        else {
            echo "Errore: " . $query . "<br>" . mysqli_error($con);
        }
        
        $query = "
            INSERT INTO Img_Dev
            VALUES ('', '".mysqli_insert_id($con)."', '".$deviceID."')
        ";
        
        if (mysqli_query($con, $query)) {
            echo "Abbinamento Img-Dev avvenuto con successo!<br>";
            echo '<a href="aggiungi.php">Inserisci altri dati!</a>';
        }
        else {
            echo "Errore: " . $query . "<br>" . mysqli_error($con);
        }

        mysqli_close($con);
        
    }
    
?>