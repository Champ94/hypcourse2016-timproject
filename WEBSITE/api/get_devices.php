<?php
	
	header('Content-Type: application/json');
	
    if(isset($_GET["action"]) && !empty($_GET["action"])) {

        $action = $_GET["action"];

        switch($action) {
            /*
                Funzioni pagina device.html
            */
            case "get_device":
                if(isset($_GET["idDevice"])) {
                    getDevice($_GET["idDevice"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            case "get_img":
                if(isset($_GET["idDevice"]) && isset($_GET["idColore"])) {
                    getImages($_GET["idDevice"], $_GET["idColore"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            case "get_categoria":
                if(isset($_GET["idCategoria"])) {
                    getCategoria($_GET["idCategoria"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            /*
                Funzioni pagina lista_devices.html e lista_outlet.html
            */
            case "get_devlist":
                if(isset($_GET["idCategoria"])) {
                    getDevlist($_GET["idCategoria"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            case "get_outlet":
                getOutlet();
                break;

            case "get_filtri":
                if(isset($_GET["idCategoria"])) {
                    getFiltri($_GET["idCategoria"]);
                }
                else {
                    $error["json"] = "Ajax call: error!";
                    echo json_encode($error);
                }
                break;

            case "get_filteredlist":
                if(isset($_GET["idCategoria"])) {

                    $filters = array(
                        "promo" => (isset($_GET["mostra_solo"]) && $_GET["mostra_solo"]=="promo") ? "1" : "%",
                        "novita" => (isset($_GET["mostra_solo"]) && $_GET["mostra_solo"]=="novita") ? "1" : "%",
                        "disponibile" => (isset($_GET["mostra_solo"]) && $_GET["mostra_solo"]=="disponibile") ? "1" : "%",
                        "tipologiaID" => (isset($_GET["tipologiaID"])) ? $_GET["tipologiaID"] : "%",
                        "prezzo" => (isset($_GET["prezzo"])) ? $_GET["prezzo"] : "%",
                        "marcaID" => (isset($_GET["marcaID"])) ? $_GET["marcaID"] : "%",
                        "rate" => (isset($_GET["acquisto"])) ? $_GET["acquisto"] : "%",
                        "sisopID" => (isset($_GET["sisopID"])) ? $_GET["sisopID"] : "%",
                        "connessioneID" => (isset($_GET["connessioneID"])) ? $_GET["connessioneID"] : "%",
                    );

                    getFilteredlist($_GET["idCategoria"], $filters);
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
            
            $statement->close();
            
        }
        
        $query = "
        SELECT Assistance.idAssistance, Assistance.titolo
            FROM Devices JOIN Ass_Dev ON Devices.idDevices = Ass_Dev.devicesID
                JOIN Assistance ON Assistance.idAssistance = Ass_Dev.assistanceID
            WHERE Devices.idDevices = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idDevice);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["assistance_".$cont] = $data;
                $cont++;
            }
            
            $return["n_assistances"] = $cont;
            
            $return["json"] = "Action get_device: dati ritornati correttamente!";
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
                $return["percorso_".$cont] = $data["percorso"];
                $cont++;
            }
            
            $return["n_immagini"] = $cont;
            
            $return["json"] = "Action get_img: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getCategoria($idCategoria) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT *
            FROM Categoria
            WHERE Categoria.idCategoria = ?
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $result = $statement->get_result();
            if($data = $result->fetch_assoc()) {
                $return = $data;
            }
            
            $return["json"] = "Action get_categoria: dati ritornati correttamente!";
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
            
            /*
                Overwritten for debugging pourpose
            */
            $return["n_devices"] = $cont;
            
            $return["json"] = "Action get_devlist: dati ritornati correttamente!";
			echo $_GET["callback"]."(".json_encode($return).")";
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getOutlet() {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT DISTINCT Devices.idDevices, Devices.nome, Devices.prezzo_intero, Devices.prezzo_rate, Devices.prezzo_scontato, Devices.n_rate, Devices.promo, Devices.novita, Devices.categoriaID
            FROM Devices
            WHERE Devices.promo = 1
        ";
        
        
        if($statement = $con->prepare($query)) {
            
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
                WHERE Devices.promo = 1
                ORDER BY Devices.idDevices
            ) AS imgdevlist
            GROUP BY idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["device_".$cont] += $data;
                $cont++;
            }
            
            /*
                Overwritten for debugging pourpose
            */
            $return["n_devices"] = $cont;
            
            $return["json"] = "Action get_outlet: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getFiltri($idCategoria) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT DISTINCT Tipologia.* 
            FROM Devices, Categoria, Tipologia
            WHERE Devices.tipologiaID = Tipologia.idTipologia
                AND Devices.categoriaID = Categoria.idCategoria
                AND Devices.categoriaID = ?
            ORDER BY Tipologia.nome
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["tipologia_".$cont] = $data;
                $cont++;
            }
            
            $return["n_tipologie"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT DISTINCT Marca.* 
            FROM Devices, Categoria, Marca
            WHERE Devices.marcaID = Marca.idMarca
                AND Devices.categoriaID = Categoria.idCategoria
                AND Devices.categoriaID = ?
            ORDER BY Marca.nome
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["marca_".$cont] = $data;
                $cont++;
            }
            
            $return["n_marche"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT DISTINCT SisOp.* 
            FROM Devices, Categoria, SisOp
            WHERE Devices.sisopID = SisOp.idSisOp
                AND Devices.categoriaID = Categoria.idCategoria
                AND Devices.categoriaID = ?
            ORDER BY SisOp.nome
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["sisop_".$cont] = $data;
                $cont++;
            }
            
            $return["n_sisop"] = $cont;
            
            $statement->close();
            
        }
        
        $query = "
        SELECT DISTINCT Connessione.* 
            FROM Devices, Categoria, Connessione
            WHERE Devices.connessioneID = Connessione.idConnessione
                AND Devices.categoriaID = Categoria.idCategoria
                AND Devices.categoriaID = ?
            ORDER BY Connessione.tipo
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("i", $idCategoria);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["connessione_".$cont] = $data;
                $cont++;
            }
            
            $return["n_connessioni"] = $cont;
            
            $return["json"] = "Action get_filtri: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

    function getFilteredlist($idCategoria, $filters) {
        
        require "connessione.php";
        
        $con->query("SET NAMES 'utf8'");
        $con->query("SET CHARACTER_SET utf8;");
        
        $query = "
        SELECT Devices.idDevices, Devices.nome, Devices.prezzo_intero, Devices.prezzo_rate, Devices.prezzo_scontato, Devices.n_rate, Devices.promo, Devices.novita
            FROM Devices, Categoria
            WHERE Devices.categoriaID = Categoria.idCategoria
            AND Devices.categoriaID = ?
            AND Devices.promo LIKE ?
            AND Devices.novita LIKE ?
            AND Devices.disponibile LIKE ?
            AND Devices.tipologiaID LIKE ?
            AND Devices.prezzo_intero BETWEEN ? AND ?
            AND Devices.marcaID LIKE ?
            AND Devices.n_rate BETWEEN ? AND ?
            AND Devices.sisopID LIKE ?
            AND Devices.connessioneID LIKE ?
        ";
        
        switch($filters["prezzo"]) {
            case 1:
                $min_prezzo = 0;
                $max_prezzo = 150;
                break;
                
            case 2:
                $min_prezzo = 150;
                $max_prezzo = 300;
                break;
                
            case 3:
                $min_prezzo = 300;
                $max_prezzo = 400;
                break;
                
            case 4:
                $min_prezzo = 400;
                $max_prezzo = 9999;
                break;
                
            default:
                $min_prezzo = 0;
                $max_prezzo = 9999;
        }
        
        if($filters["rate"]==1) {
            $min_rate = 1;
            $max_rate = 100;
        }
        else if($filters["rate"]==2) {
            $min_rate = -1;
            $max_rate = 1;
        }
        else {
            $min_rate = -1;
            $max_rate = 100;
        }
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("ssssssssssss", $idCategoria, $filters["promo"], $filters["novita"], $filters["disponibile"], $filters["tipologiaID"], $min_prezzo, $max_prezzo, $filters["marcaID"], $min_rate, $max_rate, $filters["sisopID"], $filters["connessioneID"]);
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
                    AND Devices.promo LIKE ?
                    AND Devices.novita LIKE ?
                    AND Devices.disponibile LIKE ?
                    AND Devices.tipologiaID LIKE ?
                    AND Devices.prezzo_intero BETWEEN ? AND ?
                    AND Devices.marcaID LIKE ?
                    AND Devices.n_rate BETWEEN ? AND ?
                    AND Devices.sisopID LIKE ?
                    AND Devices.connessioneID LIKE ?
                ORDER BY Devices.idDevices
            ) AS imgdevlist
            GROUP BY idDevices
        ";
        
        if($statement = $con->prepare($query)) {
            
            $statement->bind_param("ssssssssssss", $idCategoria, $filters["promo"], $filters["novita"], $filters["disponibile"], $filters["tipologiaID"], $min_prezzo, $max_prezzo, $filters["marcaID"], $min_rate, $max_rate, $filters["sisopID"], $filters["connessioneID"]);
            $statement->execute();
            
            $cont = 0;
            $result = $statement->get_result();
            while($data = $result->fetch_assoc()) {
                $return["device_".$cont] += $data;
                $cont++;
            }
            
            $return["n_devices"] = $cont;
            
            $return["json"] = "Action get_filteredlist: dati ritornati correttamente!";
            echo json_encode($return);
            
            $statement->close();
            
        }
        
        $con->close();
        
    }

?>