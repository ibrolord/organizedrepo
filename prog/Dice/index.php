<?php
$doc = "<!DOCTYPE html>
			<html>
				<head>
					<title>Graded Code Assessment 2</title>
				</head>
			<body>
				<form name='frmDiceGame' method='get' action='serverCode/dice.php'>
					Enter Number of Dice: <input type='text' name='txtNumDice' size=2>
					<input type='submit' name='btnRoll' value='Roll Them Now!'>					
				</form>
			</body>
		</html>";
		
echo $doc;
?>
