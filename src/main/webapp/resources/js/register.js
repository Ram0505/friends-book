

function valid()
{


	if (!s.firstname.value.match(/^[a-zA-Z]+$/)
			&& s.firstname.value != "") {
		s.firstname.value = "";
		s.firstname.focus();
		alert("Please enter characters only");
		return false;

	}
	else if(s.firstname.value == ""){
			s.firstname.value = "";
			s.firstname.focus();
			alert("Please Enter firstname");
		return false;

	}


}



function valid1()
{
	if (!s.surname.value.match(/^[a-zA-Z]+$/)
			&& s.surname.value != "") {
		s.surname.value = "";
		s.surname.focus();
		alert("Please Enter only alphabets in text");
		return false;

	}
	else if(s.surname.value == ""){
		s.surname.value = "";
		s.surname.focus();
		alert("Please Enter surname");
		return false;

	}


}

function valid2()
{

	var k = document.s.phone.value;
	if(k=="")
	{
		alert("Enter mobile number");
		return false;
	}
	if(isNaN(k))
	{
		alert("Enter mobile number in numbers");
		return false;
	}
	if((k.charAt(0)==9)||(k.charAt(0)==8)||(k.charAt(0)==7))
	{
	}
	else
	{
		alert("Enter the correct mobile no");
		return false;
	}



}

function valid3(){

	var b=document.s.password.value;
	if(b=="")
	{
		alert("Enter Password");
		return false;
	}

}

function valid4(){

	var d=document.s.dob.value;
	if(d=="")
	{
		alert("Enter Your DateOfBirth");
		return false;
	}

}


function valid5(){

	var g=document.s.dob.value;
	if(g=="")
	{
		alert("Enter Your Gender");
		return false;
	}

}


