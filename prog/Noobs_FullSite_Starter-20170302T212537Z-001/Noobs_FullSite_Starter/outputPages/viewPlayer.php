<?php 

	require "../connectionPages/localConnect.php";
	
	$pID 	= $_GET["player"];

	$SQL	= "SELECT * FROM vw_gamers WHERE ID = $pID";
	$result	= $mysqli->query($SQL);
	$row	= $result->fetch_array();
	
	$fn		= $row["first"];
	$ln		= $row["last"];
	$em		= $row["email"];
	$t		= $row["team"];
	$bd		= $row["birthday"];
	$a		= $row["alias"];
	
	$doc 	= 	"<!DOCTYPE html>
				<html lang='en'>
					<head>
						<meta charset='utf-8'>
							<title>Edit Player Information</title>
							<link rel='stylesheet' type='text/css' href='../css/formStyle.css'>
					</head>
				<body>
					<form action='../actionPages/updatePlayer.php' method='post'>
						<div class='table'>
							<div class='row'>
								<div class='cell'>ID:</div>
								<div class='cell'><input type='text' name='txtID' value='$pID' readonly></div>
							</div>
							<div class='row'>
								<div class='cell'>First:</div>
								<div class='cell'><input type='text' name='txtFirst' value='$fn'></div>
							</div>
							<div class='row'>
								<div class='cell'>Last:</div>
								<div class='cell'><input type='text' name='txtLast' value='$ln'></div>
							</div>
							<div class='row'>
								<div class='cell'>Email:</div>
								<div class='cell'><input type='text' name='txtEmail' value='$em'></div>
							</div>
							<div class='row'>
								<div class='cell'>Team:</div>
								<div class='cell'><input type='text' name='txtTeam' value='$t'></div>
							</div>
							<div class='row'>
								<div class='cell'>DOB:</div>
								<div class='cell'><input type='text' name='txtDOB' value='$bd'></div>
							</div>
							<div class='row'>
								<div class='cell'>Alias:</div>
								<div class='cell'><input type='text' name='txtAlias' value='$a'></div>
							</div>
							<div class='row'>
								<div class='cell'></div>
								<div class='cell'><input type='submit' name='btnSubmit' value='UPDATE'></div>
							</div>
						</table>
					</form>
				</body>
				</html>";
	echo $doc;
				

?>