<?php
    
    require "../connessione.php";
        
    $con->query("SET NAMES 'utf8'");
    $con->query("SET CHARACTER_SET utf8;");
    
    $sql = "SELECT idDevices FROM Devices";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        $i = 0;
        while($row = $result->fetch_assoc()) {
            $id[$i] = $row["idDevices"];
            $i++;
        }
    } else {
        echo "0 results";
    }

    for($j=0; $j<$i; $j++) {
        $sql = "INSERT INTO Ass_Dev
                VALUES ('', 2, ".$id[$j].")";
        if ($con->query($sql) === TRUE) {
            echo "Nuovo - idDevice: ".$id[$j];
        } else {
            echo "Error: " . $sql . "<br>" . $con->error;
        }
    }

?>