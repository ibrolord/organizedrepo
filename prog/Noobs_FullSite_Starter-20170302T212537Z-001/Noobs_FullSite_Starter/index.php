<?php

	//connection to DB
	require "connectionPages/localConnect.php";
	
	//player Output SQL statement
	$playerSQL = "SELECT * FROM vw_playerTeamName";			

	if(isset($_GET["sort"]))
		$playerSQL .= " ORDER BY " . $_GET["sort"];
		
	//execute query and store results
	$result = $mysqli->query($playerSQL);

	//start to build formatted output ... opening div table tag
	$pTable = 	"<div class='table'>
			<div class='heading'>
				<div class='cell'></div>
				<div class='cell'><a href='index.php?sort=ID'>ID</a></div>
				<div class='cell'><a href='index.php?sort=first'>First</a></div>
				<div class='cell'><a href='index.php?sort=last'>Last</a></div>
				<div class='cell'><a href='index.php?sort=email'>Email</a></div>
				<div class='cell'><a href='index.php?sort=team_name'>Team</a></div>
			</div>";

	//loop through SQL data to make formatted rows for table
	while($row = $result->fetch_array())
	{
		$ID		= $row['ID'];
		$first 	= $row['first'];
		$last 	= $row['last'];
		$email 	= $row['email'];
		$team 	= $row['team_name'];

		$pTable .= 	"<div class='row'>
						<div class='cell'>
							<a href='actionPages/deletePlayer.php?player=$ID'>Delete</a>
							<a href='outputPages/viewPlayer.php?player=$ID'>Edit</a>
						</div>
						<div class='cell'>$ID</div>
						<div class='cell'>$first</div>
						<div class='cell'>$last</div>
						<div class='cell'>$email</div>
						<div class='cell'>$team</div>
					</div>";
	}

	//close out table tag
	$pTable .= "</div><p><a href='outputPages/enterPlayer.php'>Add Player</a></p>";
	
	//close connection to DB
	$mysqli->close();

	$doc = "<!DOCTYPE html>
				<html>
					<head>
					<link rel='stylesheet' type='text/css' href='css/tableStyle.css'>
					</head>
				<body>
					$pTable
				</body>
			</html>";
			
	echo $doc;
?>
