<?php

	//note - no checkbox is sent unless it has been checked.
	/*
	$colour = Array("red", "blue", "green");
	//echo $colour[0];
	foreach($colour as $a)
	{
		echo $a."<br/>";
	}
	
	
	//assotiative array
	$colour = Array("angry"=>"red",
					"sad"=>"blue",
					"jealous"=>"green"
					);
	//echo $colour["jealous"];
	
	foreach($colour as $code => $name)
	{
		echo $code."=".$name."<br/>";
	}
	*/
	if(isset($_GET["chkColour"]))
	{
		$c = $_GET["chkColour"];
		
		foreach($c as $a)
		{
			echo $a."<br/>";
		}
	}
	else
	{
		echo "Check something.";
	}
?>









