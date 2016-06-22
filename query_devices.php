<?php

    if(is_ajax()) {
        
        if(isset($_POST["action"]) && !empty($_POST["action"])) {
            
            $action = $_POST["action"];
            
            switch($action) {
                case "get_device":
                    $par = $_POST["idDevice"];
                    getDevice($par);
                    /*
                    if(isset($_POST["idDevice"])) {
                        getDevice($_POST["idDevice"]);
                    }
                    else {
                        $error["json"] = "Ajax call: error!";
                        echo json_encode($error);
                    }*/
                    break;
                    
                case "get_img":
                    if(isset($_POST["idDevice"]) && isset($_POST["idColore"])) {
                        getImages($_POST["idDevice"], $_POST["idColore"]);
                    }
                    else {
                        $error["json"] = "Ajax call: error!";
                        echo json_encode($error);
                    }
                    break;
                    
                case "get_devlist":
                    if(isset($_POST["idCategoria"]))) {
                        getDevlist($_POST["idCategoria"]);
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

    function getDevice($idDevice) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Devices.idDevices, Devices.nome, Devices.prezzo_intero, Devices.prezzo_rate, Devices.prezzo_scontato, Devices.n_rate, Devices.promo, Devices.novita, Devices.disponibile, Devices.caratteristiche, Devices.descrizione, Devices.inclusi, Devices.specifiche, Categoria.nome AS 'nome_categoria', Marca.nome AS 'nome_marca', Tipologia.nome AS  'nome_tipologia', SisOp.nome AS 'nome_sisop', Schermo.dimensione AS 'dimensione_schermo', Connessione.tipo AS 'tipo_connessione'
            FROM Devices, Categoria, Marca, Tipologia, SisOp, Schermo, Connessione
            WHERE Devices.idDevices = ?
                AND Devices.categoriaID = Categoria.idCategoria
                AND Devices.marcaID = Marca.idMarca
                AND Devices.tipologiaID = Tipologia.idTipologia
                AND Devices.sisopID = SisOp.idSisOp
                AND Devices.schermoID = Schermo.idSchermo
                AND Devices.connessioneID = Connessione.idConnessione
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idDevice);
            $statement->execute();

            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $return["caratteristiche"] = str_replace("#", "<br>", $return["caratteristiche"]);
            $return["descrizione"] = str_replace("#", "<br>", $return["descrizione"]);
            $return["inclusi"] = str_replace("#", "<br>", $return["inclusi"]);
            $return["specifiche"] = str_replace("#", "<br>", $return["specifiche"]);
            
            $return["json"] = json_encode($return);

            $statement->close();
            
        }
        
        $query = "
        SELECT DISTINCT Colori.idColori AS 'id_colore', Colori.codice AS 'codice_colore', Colori.nome AS 'nome_colore'
            FROM Colori, Devices JOIN Img_Dev ON Devices.idDevices = Img_Dev.devicesID
                JOIN Immagini ON Img_Dev.immaginiID = Immagini.idImmagini
            WHERE Devices.idDevices = ?
                AND Colori.idColori = Immagini.coloriID
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idDevice);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["colore_".$cont] = $data;
                $cont++;
            }
            
            $return["n_colori"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT Memoria.idMemoria, Memoria.dimensione
            FROM Devices JOIN Mem_Dev ON Devices.idDevices = Mem_Dev.devicesID
                JOIN Memoria ON Memoria.idMemoria = Mem_Dev.memoriaID
            WHERE Devices.idDevices = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idDevice);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["memoria_".$cont] = $data;
                $cont++;
            }
            
            $return["n_memoria"] = $cont;
            
            echo json_encode($return);

            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getImages($idDevice, $idColore) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Immagini.percorso, Colori.idColori AS 'id_colore', Colori.codice AS 'codice_colore', Colori.nome AS 'nome_colore'
            FROM Colori, Devices JOIN Img_Dev ON Devices.idDevices = Img_Dev.devicesID
                JOIN Immagini ON Img_Dev.immaginiID = Immagini.idImmagini
            WHERE Devices.idDevices = ?
                AND Colori.idColori = ?
                AND Colori.idColori = Immagini.coloriID
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("ii", $idDevice, $idColore);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["percorso_".$cont] = $data;
                $cont++;
            }
            
            $return["n_immagini"] = $cont;
            
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getDevlist($idCategoria) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Devices.idDevices, Devices.nome, Devices.prezzo_intero, Devices.prezzo_rate, Devices.prezzo_scontato, Devices.n_rate, Devices.promo, Devices.novita
            FROM Devices, Categoria
            WHERE Devices.categoriaID = Categoria.idCategoria
            AND Devices.categoriaID = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["device_".$cont] = $data;
                $cont++;
            }
            
            $return["n_devices"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT DISTINCT imgdevlist.* FROM (
            SELECT DISTINCT Devices.idDevices, Immagini.percorso
                FROM Categoria, Devices JOIN Img_Dev ON Devices.idDevices = Img_Dev.devicesID
                    JOIN Immagini ON Img_Dev.immaginiID = Immagini.idImmagini
                WHERE Devices.categoriaID = Categoria.idCategoria
                AND Devices.categoriaID = ?
                ORDER BY Devices.idDevices
            ) AS imgdevlist
            GROUP BY idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["device_".$cont] += $data;
                $cont++;
            }
            
            $return["n_devices"] = $cont;
            
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>