<?php
 //code goes here
 //echo "this works!";
 //echo $_GET["txtPDexNo"];
 
 //difference between isset and empty for textboxes
 
  if (isset($_GET["txtPDexNo"])) //empty($_GET["txtPDexNo"])
 {
	 $pnum = $_GET["txtPDexNo"];
	 
	 //echo "You have " . $pnum . " pokemon.";
	 //"You've" . $pnum . " pokemon."
	 
	 if(($pnum < 0) || ($pnum > 802))
	 {
		 echo "Please enter a proper number";
	 }
	 else
	 {
		echo "You have $pnum pokemon."; 
	 }
 }
 else
 {
	 echo "Please enter a pokedex number.";
 } 
 echo "<br/><a href='../pokemon.html'>Go back</a>";
?>