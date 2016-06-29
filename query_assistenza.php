<?php
    
    if(is_ajax()) {
        
        if(isset($_POST["action"]) && !empty($_POST["action"])) {
            
            $action = $_POST["action"];
            
            switch($action) {
                case "get_assistance":
                    if(isset($_POST["idAssistance"])) {
                        getAssistance($_POST["idAssistance"]);
                    }
                    else {
                        $error["json"] = "Ajax call: error!";
                        echo json_encode($error);
                    }
                    break;
                    
                case "get_DevAss":
                    if(isset($_POST["idAssistance"])) {
                        gedDevAss($_POST["idAssistance"]);
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

    function getAssistance($idAssistance) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Assistance.*, Categoria.*, Tipo_assistenza.nome AS 'tipo_assistenza'
            FROM Assistance, Categoria, Tipo_assistenza
            WHERE idAssistance = ?
                AND Assistance.categoriaID = Categoria.idCategoria
                AND Assistance.tipo_assistenzaID = Tipo_assistenza.idTipo_assistenza
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idAssistance);
            $statement->execute();
            
            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $return["json"] = json_encode($return);
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getDevAss($idAssistance) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Devices.idDevices, Devices.nome
            FROM DEVICES JOIN Ass_Dev ON Devices.idDevices = Ass_Dev.devicesID
                JOIN Assistance ON Ass_Dev.assistanceID = Assistance.idAssistance
            WHERE Assistance.idAssistance = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idAssistance);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["device_".$cont] = $data;
                $cont++;
            }
            
            $return["n_devices"] = $cont;
            
            $return["json"] = json_encode($return);
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>