<?php
	/**
	* Created by Brandon Turmel
	* 24/01/2017
	* PROG1608-04
	*/

	// Check that the cookie is set, if it isn't set it to 0
	if (isset($_COOKIE["DiceGameTotal"])) {
		$total = $_COOKIE["DiceGameTotal"];
	} else {
		setcookie("DiceGameTotal", 0, time() + (60 * 60 * 3), "/");	
		$total = 0;
	}

	// Get the value passed to this page from the index.php page.
	$choiceNum	= $_GET["txtNumber"];

	// Set up manditory variables
	$numFound	= 0;
	$path		= "../icons";
	$dice		= array("<img src='$path/One.png'>",
						"<img src='$path/Two.png'>",
						"<img src='$path/Three.png'>",
						"<img src='$path/Four.png'>",
						"<img src='$path/Five.png'>",
						"<img src='$path/Six.png'>");

	// Roll 6 times
	for ($i = 0; $i < 6; $i++) {
		// generate a random number
		$roll = rand(0, 5);
		// Test if the dice number is equal to the user inputted number
		if (($roll + 1) == $choiceNum) {
			// Increment the number of correct rolls
			$numFound++;
		}
		// Print the dice picture to the screen
		echo $dice[$roll];
	}

	// Increment the total
	$total += $numFound;
	// Print the matches and total
	echo "<br><p>You found ".(($numFound > 0) ? $numFound : "no")." matches for the number ".$choiceNum.". Your running total for this round is: ".$total."</p>";
	// Set the cookie
	setcookie("DiceGameTotal", $total, time() + (60 * 60 * 3), "/");
?>

<!-- New round and reset links -->
<a href="../index.php">Pick a new number and roll again</a>
<br>
<a href="refreshGame.php">Start a new round</a>
