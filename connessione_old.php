<?php
    
    require "create_env.php";

    $host = getenv("OPENSHIFT_MYSQL_DB_HOST") . ":" . getenv("OPENSHIFT_MYSQL_DB_PORT");
    $username = getenv("OPENSHIFT_MYSQL_DB_USERNAME");
    $password = getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
    $db = getenv("OPENSHIFT_APP_NAME");

    $con = mysqli_connect($host, $username, $password, $db);

    if(!$con) {
        
        echo "Error: Unable to connect to MySQL." . PHP_EOL;
        echo "Debugging errno: " . mysqli_connect_errno() .  PHP_EOL;
        echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
        exit();
        
    }

?>