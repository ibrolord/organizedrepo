<?php
	//database information 
$server = 	"Wcsvpsqlprog01"; 
	$user = 	"iagunbiade1";
	$pass = 	"4270581";
    $database = "iagunbiade1"; 
         
	//make a database connection object
	$mysqli = new mysqli($server, $user, $pass, $database);	
	
	//test if there are database connection errors
	if ($mysqli->connect_error) 
		die("Connect Error " . $mysqli->connect_error);

	
	
?>