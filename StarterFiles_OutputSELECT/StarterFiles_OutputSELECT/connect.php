<?php
	//database information 
    $server = "localhost"; 
	$user = "root";
	$pass = "";
    $database = "webauth"; 
         
	//make the database connection 
	$mysqli = new mysqli($server, $user, $pass, $database);

	if ($mysqli->connect_error) 
		die("Connect Error " . $mysqli->connect_errno . ": " . $mysqli->connect_error);


?>