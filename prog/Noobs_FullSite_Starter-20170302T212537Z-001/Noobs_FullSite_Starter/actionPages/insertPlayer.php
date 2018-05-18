<?php 
//catch required fields
$fn 	= $_POST["txtFirst"];
$ln 	= $_POST["txtLast"];
$em 	= $_POST["txtEmail"];
$tID 	= $_POST["txtTeam"];
$role	= $_POST["cboRole"];

//are any of the required fields empty?
if(empty($fn) || empty($ln) || empty($em) || empty($tID) || empty($role) || !isset($_POST["radGender"]))
{
	$message = "Missing required data <br>
				<a href='../index.php'>Back to Main Page<a>";
}
else
{
	//set remaining values
	$gender	= $_POST["radGender"];
	$pass 	= MD5("pass1234");
	$alias 	= empty($_POST["txtAlias"]) ? 'NULL' : "'" . $_POST["txtAlias"] . "'";
	$DOB 	= empty($_POST["txtDOB"]) ? 'NULL' : "'" . $_POST["txtDOB"] . "'";		
	
	//connect to mysql db
	require "../connectionPages/localConnect.php";
	
	//query string
	$SQL = 	"INSERT INTO player (playerFirstName,playerLastName,playerEmail,teamID,playerDOB,playerAlias,playerPass, playerRole, playerGender)
			 VALUES ('$fn', '$ln','$em', $tID, $DOB, $alias, '$pass', '$role','$gender')";
	
	//execute query
	$mysqli->query($SQL);
	
	//success or failure?
	if($mysqli->affected_rows > 0)
		$message = "Record successfully inserted<br>
					<a href='../index.php'>Back to Main Page<a>";
	else
		$message = "Unable to insert record: " . $mysqli->error . "<br>
					<a href='../index.php'>Back to Main Page<a>";
	
	//close connection
	$mysqli->close(); 
}
	
	//build and serve up response
	$doc = "<!DOCTYPE html>
			<html lang='en'>
				<head>
					<meta charset='utf-8'>
						<title>INSERT PAGE DEMO</title>
				</head>
			<body>
				$message
			</body>
			</html>";
			
	echo $doc;
?>