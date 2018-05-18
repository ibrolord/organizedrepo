<?php

	$numToRoll = $_GET["txtNumDice"];
	$images = "";
	
	$path		= "../icons";
	$dice		= array("<img src='$path/One.png'>",
						"<img src='$path/Two.png'>",
						"<img src='$path/Three.png'>",
						"<img src='$path/Four.png'>",
						"<img src='$path/Five.png'>",
						"<img src='$path/Six.png'>");
						
	for ($i=0; $i< $numToRoll; $i++)
	{
		$die = rand(0,5);
		$images .= $dice[$die];
	}
	
	echo $images."<br/>
		<a href='../index.php'>Go Back</a>";
?>