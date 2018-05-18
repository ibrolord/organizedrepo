//document.ready()
$(function()                   
{
	//alert("bklhi'pj wewe we;j jwe poh");//the echo for jq
	//eventlistener
	//JS: getElementById() in JQ use ("#")
	$("#btnSubmit").click(function()
	{

	//	alert("say wassa");
	//variables
	var fn = $("#txtFirst").val();
	var ln = $("#txtLast").val();
	var t = $("#txtTeam").val();
	var em = $("#txtEmail").val();
	var role = $("#cboRole").val();
	var error = "";
	var g = $("input[name=radGender]:checked").val();


	if(g == undefined)
	{
		error += "Gender is required";
	}

	if(fn == "")
	{
		error += "First is required";

	}


	if(ln == "")
	{
		error += "Last is required";


	}


	if(t == ""	|| isNaN(t))
	{
		error += "Team is required";


	}


	if(em == "")
	{
		error += "Email is required";


	}

	if(role == "prompt")
	{
		error += "Role is required";


	}


	if(error == "")
	{
		$("form").submit();//when page is ready find the form, for only one selector and it finds the tags
	}

	else
	{
		alert(error);
	}



	});
}










	);
