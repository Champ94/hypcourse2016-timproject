<?php

    if(is_ajax()) {
        
        if(isset($_POST["action"]) && !empty($_POST["action"])) {
            
            $action = $_POST["action"];
            
            switch($action) {
                case "get_sls":
                    if(isset($_POST["idSLS"])) {
                        getSLS($_POST["idSLS"]);
                    }
                    else {
                        $error["json"] = "Ajax call: error!";
                        echo json_encode($error);
                    }
                    break;
                    
                default:
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
            }
            
        }
        
    }

    /*
        Function that checks if it's an Ajax call
    */

    function is_ajax() {
        return isset($_SERVER["HTTP_X_REQUESTED_WITH"]) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == "xmlhttprequest";
    }

    function getSLS($idSLS) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT SLS.*, Categoria.*
            FROM SLS, Categoria
            WHERE idSLS = ?
                AND SLS.categoriaID = Categoria.idCategoria
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idAssistance);
            $statement->execute();
            
            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $statement->close();
            
        }
        
        $query = "
        SELECT *
            FROM Faq
            WHERE assistanceID = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idAssistance);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["faq_".$cont] = $data;
                $cont++;
            }
            
            $return["n_faq"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT Devices.idDevices, Devices.nome
            FROM Assistance JOIN Ass_Dev ON Assistance.idAssistance = Ass_Dev.assistanceID
                JOIN Devices ON Devices.idDevices = Ass_Dev.devicesID
            WHERE Assistance.idAssistance = ?
            ORDER BY Devices.idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idAssistance);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $idDevices[$cont] = $data["idDevices"];
                $return["device_".$cont] = $data;
                $cont++;
            }
            
            $return["n_devices"] = $cont;
            
            $return["json"] = json_encode($return);
            echo json_encode($return);

            $statement->close();
            
        }
        
        $query = "
        SELECT Immagini.percorso, Devices.idDevices
        FROM Devices JOIN Img_Dev ON Devices.idDevices = Img_Dev.devicesID
            JOIN Immagini ON Img_Dev.immaginiID = Immagini.idImmagini
            WHERE Devices.idDevices = ?
            GROUP BY Devices.idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            for($i=0; $i<$cont; $i++) {
                $statement->bind_param("i", $idDevices[$i]);
                $statement->execute();

                $result = $statement->get_result();
                if($data = $result->fetch_assoc()) {
                    $return["percorso_".$i] = $data["percorso"];
                }
            }
            
            $return["n_immagini"] = $i;
            
            $return["json"] = json_encode($return);
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>