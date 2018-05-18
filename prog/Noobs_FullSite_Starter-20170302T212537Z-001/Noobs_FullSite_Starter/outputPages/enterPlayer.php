<?php 

$doc 	= 	"<!DOCTYPE html>
			<html lang='en'>
				<head>
					<meta charset='utf-8'>
						<title>Add New Player Form</title>
						
						<script src='../clientCode/jquery-3.1.1.min.js'></script>
						<script src='../clientCode/validatePlayer.js'></script>
						
						<link rel='stylesheet' type='text/css' href='../css/formStyle.css'>
				</head>
			<body>
				<form action='../actionPages/insertPlayer.php' method='post' name='frmAddPlayer'>
					<div class='table'>							
						<div class='row'>
							<div class='cell'>First:</div>
							<div class='cell'><input type='text' name='txtFirst' id='txtFirst'></div>
						</div>
						<div class='row'>
							<div class='cell'>Last:</div>
							<div class='cell'><input type='text' name='txtLast' id='txtLast'></div>
						</div>
						<div class='row'>
							<div class='cell'>Gender:</div>
							<div class='cell'>
								<input type='radio' name='radGender' id='radMale' value='M'>M 
								<input type='radio' name='radGender' id='radFemale' value='F'>F	
							</div>
						</div>
						<div class='row'>
							<div class='cell'>Role:</div>
							<div class='cell'>
								<select name='cboRole' id='cboRole'>
									<option value='prompt'>Select a Role</option>
									<option value='Captain'>Captain</option>
									<option value='Assistant Captain'>Assistant Captain</option>
									<option value='Pion'>Pion</option>
								</select>
							</div>
						</div>
						
						
						<div class='row'>
							<div class='cell'>Email:</div>
							<div class='cell'><input type='text' name='txtEmail' id='txtEmail'></div>
						</div>
						<div class='row'>
							<div class='cell'>Team:</div>
							<div class='cell'><input type='text' name='txtTeam' id='txtTeam'></div>
						</div>
						<div class='row'>
							<div class='cell'>DOB:</div>
							<div class='cell'><input type='text' name='txtDOB' id='txtDOB'></div>
						</div>
						<div class='row'>
							<div class='cell'>Alias:</div>
							<div class='cell'><input type='text' name='txtAlias' id='txtAlias'></div>
						</div>
						<div class='row'>
							<div class='cell'></div>
							<div class='cell'><input type='button' id = 'btnSubmit' name='btnSubmit' value='INSERT' onclick='btnSubmit'></div>
						</div>
					</table>
				</form>
			</body>
			</html>";
echo $doc;
				

?>