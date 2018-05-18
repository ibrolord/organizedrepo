<?php
	//test for required fields - name, email address, and program
	//text boxes and combo boxes are always 'set' because they are always passed to get/post, 
	//even if the are empty! But unchecked checkboxes or radio buttons are not passed to GET or POST collections
	//so they can be unset
	if(isset($_GET["radProg"]) && !empty($_GET["txtName"]) && !empty($_GET["txtEmail"]))
	{
		$name = $_GET["txtName"];
		$email = $_GET["txtEmail"];		
		$term = $_GET["cboTerm"];
		$prog = $_GET["radProg"];
		
		//use if/elseif for program test and assign coordinator
		//you could also do a switch statement
		if($prog=="CP" || $prog=="CPA")
		{
			$coord = "Peter";
		}
		elseif($prog=="NMWD")
		{
			$coord = "Roberto";
		}
		elseif($prog=="GAME")
		{
			$coord = "Rick";
		}
		elseif($prog=="CST")
		{
			$coord = "Dino";
		}
		else
		{
			$coord = "N/A";
		}

		echo	"$name, welcome to term $term of the $prog program.<br>
				We will use this email for contacting you: $email.<br>
				Your coordinator is $coord";
	}
	else
	{
		echo "Program, name, and email is required";
	}
?>