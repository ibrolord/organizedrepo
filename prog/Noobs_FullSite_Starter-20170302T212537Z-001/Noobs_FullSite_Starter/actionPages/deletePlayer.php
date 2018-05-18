<?php

	//1: make a connection
	require "../connectionPages/localConnect.php";
	
	//2: code query string
	$sql = "DELETE FROM player 
			WHERE playerID = " . $_GET["player"];

	//3: execute query
	$mysqli->query($sql);

	//4: test to see if query execution affected more than 1 row
	if($mysqli->affected_rows > 0)
		$message = "Record successfully deleted<br>
					<a href='../index.php'>Back to Main Page<a>";
	else
		$message = "Unable to delete record: " . $mysqli->error . "<br>
					<a href='../index.php'>Back to Main Page<a>";
	
	//close connection
	$mysqli->close(); 
	
	//build and serve up response
	$doc = "<!DOCTYPE html>
			<html lang='en'>
				<head>
					<meta charset='utf-8'>
						<title>DELETE PAGE DEMO</title>
				</head>
			<body>
				$message
			</body>
			</html>";
			
	echo $doc;

?>

