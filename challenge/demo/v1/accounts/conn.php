<?php
    $mysql = new mysqli("localhost", "u682953550_admin","Superadmin24","u682953550_BestHost");
        
    if ($mysql->connect_error){
        die("Failed to connect " . $mysql->connect_error);
    }


?>
