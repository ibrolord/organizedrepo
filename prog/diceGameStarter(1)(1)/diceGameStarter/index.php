<?php
//ADD CODE HERE TO TEST FOR THE COOKIE

$doc = "<!DOCTYPE html>
			<html>
				<head>
					<title>Graded Code Assessment 1</title>
				</head>
			<body>
				<form name='frmDiceGame' method='get' action='serverCode/dice.php'>
					Pick a number between 1 and 6: <input type='text' name='txtNumber' size=2>
					<input type='submit' name='btnRoll' value='Play the Dice Game!'>					
				</form>
			</body>
		</html>";
		
echo $doc;
?>
