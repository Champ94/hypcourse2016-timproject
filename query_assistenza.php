<?php
    
    if(is_ajax()) {
        
        if(isset($_POST["action"]) && !empty($_POST["action"])) {
            
            $action = $_POST["action"];
            
            switch($action) {
                case "get_device":
                    if(isset($_POST["idDevice"])) {
                        getDevice($_POST["idDevice"]);
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

    

?>