<?php
	/**
	* Created by Brandon Turmel
	* 24/01/2017
	* PROG1608-04
	*/

// Check if the cookie is set	
if (isset($_COOKIE["DiceGameTotal"])) {
	$total = $_COOKIE["DiceGameTotal"];
}
?>
<!-- Print the for for the user -->
<!DOCTYPE html>
<html>
	<head>
		<title>Graded Code Assessment 1</title>
	</head>
	<body>
		<form name='frmDiceGame' method='get' action='serverCode/dice.php'>
			Pick a number between 1 and 6: <input type='text' name='txtNumber' size=2>
			<input type='submit' name='btnRoll' value='Play the Dice Game!'>				
		</form>
		<!-- If the total exists, display the current total option and the new round -->
		<?php if (isset($total)) { ?>
			<p>Your current game total is: <?=$total ?></p>
			<a href="serverCode/refreshGame.php">Start a new round</a>
		<?php } ?>
	</body>
</html>
