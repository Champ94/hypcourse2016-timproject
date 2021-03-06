<?php
        
    if(isset($_GET["action"]) && !empty($_GET["action"])) {

        $action = $_GET["action"];

        switch($action) {
            case "get_sls":
                if(isset($_GET["idSLS"])) {
                    getSLS($_GET["idSLS"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;
            case "get_subsls":
                if(isset($_GET["idSubSLS"])) {
                    getSubSLS($_GET["idSubSLS"]);
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

    function getSLS($idSLS) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT SLS.*
            FROM SLS, Categoria
            WHERE idSLS = ?
                AND SLS.categoriaID = Categoria.idCategoria
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idSLS);
            $statement->execute();
            
            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $statement->close();
            
        }
        
        $query = "
        SELECT SubSLS.*
            FROM SubSLS, SLS, Categoria
            WHERE SubSLS.slsID = ?
				AND SubSLS.slsID = SLS.idSLS
                AND SLS.categoriaID = Categoria.idCategoria
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idSLS);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["subsls_".$cont] = $data;
                $cont++;
            }
            
            $return["n_subsls"] = $cont;
            
            $return["json"] = "Action get_sls: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getSubSLS($idSubSLS) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT SubSLS.*, SLS.nome AS 'nome_sls'
            FROM SubSLS, SLS
            WHERE SubSLS.idSubSLS = ?
                AND SubSLS.slsID = SLS.idSLS
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idSubSLS);
            $statement->execute();
            
            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $return["testo_contenuti"] = str_replace("#", "<br>", $return["testo_contenuti"]);
            
            $statement->close();
            
        }
        
        $query = "
        SELECT Devices.idDevices, Devices.nome, Categoria.idCategoria
            FROM Categoria, SubSLS JOIN SubSls_Dev ON SubSLS.idSubSLS = SubSls_Dev.subslsID
                JOIN Devices ON Devices.idDevices = SubSls_Dev.devID
            WHERE SubSLS.idSubSLS = ?
				AND Devices.categoriaID = Categoria.idCategoria
            ORDER BY Devices.idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idSubSLS);
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
            
            $return["json"] = "Action get_SubSLS: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>