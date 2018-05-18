<?php 
	
	$amenities = $_GET["chkFeatures"];
	$numAmen = count($amenities);
	$cost = 0;
	
	foreach($amenities as $a)
	{
		$cost += $a;
	}
	
	echo 	"You selected $numAmen options<br>
			The total comes to $$cost."

	
?>



