<?php
    
    if(is_ajax()) {
        if (isset($_POST["action"]) && !empty($_POST["action"])) {
            $action = $_POST["action"];
            switch($action) {
                case "get_catalogo":
                    get_catalogo();
                    break;
            }
        }
    }

    function is_ajax() {
        return isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest';
    }

    function get_catalogo() {
        
        require "connessione.php";

        $query = "
            SELECT Devices.idDevices, Devices.nome, Devices.prezzo_intero, Devices.prezzo_scontato, Devices.prezzo_rate, Devices.n_rate, Devices.promo, Devices.novita, Marca.nome AS 'nome_marca'
            FROM Devices, Marca
            WHERE Devices.marcaID = Marca.idMarca
            LIMIT 12
        ";

        $dati = mysqli_query($con, $query);
        
        $i=0;
        
        if(mysqli_num_rows($dati) > 0) {
            while($device = mysqli_fetch_assoc($dati)) {
                $return["idDevices#".$i] = $device["idDevices"];
                $return["nome#".$i] = $device["nome"];
                $return["prezzo_intero#".$i] = $device["prezzo_intero"];
                $return["prezzo_scontato#".$i] = $device["prezzo_scontato"];
                $return["prezzo_rate#".$i] = $device["prezzo_rate"];
                $return["n_rate#".$i] = $device["n_rate"];
                $return["promo#".$i] = $device["promo"];
                $return["novita#".$i] = $device["novita"];
                $return["nome_marca#".$i] = $device["nome_marca"];
                $i++;
            }
        }
        
        $return["n_elementi"] = $i;
        $return["json"] = json_encode($return);
        echo json_encode($return);
        
    }

?>