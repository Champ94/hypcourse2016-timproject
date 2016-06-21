<?php
    
    require "create_env.php";

    $host = getenv("OPENSHIFT_MYSQL_DB_HOST") . ":" . getenv("OPENSHIFT_MYSQL_DB_PORT");
    $username = getenv("OPENSHIFT_MYSQL_DB_USERNAME");
    $password = getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
    $db = getenv("OPENSHIFT_APP_NAME");

    $con = new mysqli($host, $username, $password, $db);

    if($con->connect_error) {
        echo "Connection failed: " . $con->connect_error;
        echo "Errno: " . $con->connect_errno;
        exit;
    }

?>