<?php

    if(isset($_GET["action"]) && !empty($_GET["action"])) {

        $action = $_GET["action"];

        switch($action) {
            case "get_assistance":
                if(isset($_GET["idAssistance"])) {
                    getAssistance($_GET["idAssistance"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            case "get_assistancelist":
                if(isset($_GET["idCategoria"])) {
                    getAssistanceList($_GET["idCategoria"]);
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
            
            $return["descrizione"] = str_replace("#", "<br>", $return["descrizione"]);
            
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
                $return["faq_".$cont]["risposta"] = str_replace("#", "<br>", $return["faq_".$cont]["risposta"]);
                $cont++;
            }
            
            $return["n_faq"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT Devices.idDevices, Devices.nome, Categoria.idCategoria
            FROM Categoria, Assistance JOIN Ass_Dev ON Assistance.idAssistance = Ass_Dev.assistanceID
                JOIN Devices ON Devices.idDevices = Ass_Dev.devicesID
            WHERE Assistance.idAssistance = ?
				AND Devices.categoriaID = Categoria.idCategoria
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
            
            $return["json"] = "Action get_assistance: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getAssistanceList($idCategoria) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT DISTINCT Assistance.*, Categoria.idCategoria, Categoria.nome AS 'nome_categoria', Categoria.icona, Tipo_assistenza.*
            FROM Assistance, Categoria, Tipo_assistenza
            WHERE Assistance.categoriaID = Categoria.idCategoria
                AND Assistance.categoriaID = ?
                AND Assistance.tipo_assistenzaID = Tipo_assistenza.idTipo_assistenza
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["assistenza_".$cont] = $data;
                $cont++;
            }
            
            $return["n_assistenze"] = $cont;
            
            $return["json"] = "Action get_assistancelist: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>