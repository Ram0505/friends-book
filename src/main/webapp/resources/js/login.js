function AllowNumbers() {
		if (!frm.phone.value.match(/^[0-9]+$/) && frm.phone.value != "") {
			frm.phone.value = "";
			frm.phone.focus();
			document.getElementById("phone").style.border = 'thick solid red';
			alert("Please Enter Numbers only");
		} else {
			document.getElementById("phone").style.border = 'thin solid black';

		}

	}
	
	function AllowPassword() {
		if (!frm.password.value != "") {
			frm.password.value = "";
			frm.password.focus();
			document.getElementById("password").style.border = 'thick solid red';
			alert("Please Enter password");
		} else {
			document.getElementById("password").style.border = 'thin solid black';

		}

	}