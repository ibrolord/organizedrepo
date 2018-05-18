<?php 
//catch required fields
$ID = $_POST["txtID"];
$fn = $_POST["txtFirst"];
$ln = $_POST["txtLast"];
$em = $_POST["txtEmail"];
$tID = $_POST["txtTeam"];
//are any of the required fields empty?
if(empty($ID) || empty($fn) || empty($ln) || empty($em) || empty($tID))
{
	$message = "Missing required data <br>
				<a href='../index.php'>Back to Main Page<a>";
}
else
{
	//set remaining values
	$alias 	= empty($_POST["txtAlias"]) ? 'NULL' : "'" . $_POST["txtAlias"] . "'";
	$DOB 	= empty($_POST["txtDOB"]) ? 'NULL' : "'" . $_POST["txtDOB"] . "'";
	
	//connect to mysql db
	require "../connectionPages/localConnect.php";
	
	//query string
	$SQL = "UPDATE vw_gamers
			SET first 		= '$fn',
				last		= '$ln',
				email		= '$em',
				team		= $tID,
				birthday	= $DOB,
				alias 		= $alias
			WHERE ID		= $ID";
	
	//execute query	
	$mysqli->query($SQL);
	
	//success or failure?
	if($mysqli->affected_rows > 0)
		$message = "Record successfully updated<br>
					<a href='../index.php'>Back to Main Page<a>";
	else
		$message = "Unable to update record: " . $mysqli->error . "<br>
					<a href='../index.php'>Back to Main Page<a>";
	
	//close connection
	$mysqli->close();	
}
	//build and serve up response
	$doc = "<!DOCTYPE html>
			<html lang='en'>
				<head>
					<meta charset='utf-8'>
						<title>UPDATE PAGE DEMO</title>
				</head>
			<body>
				$message
			</body>
			</html>";
			
	echo $doc;

?>