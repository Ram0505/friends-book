<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FriendsBook-Home</title>

<c:url value="resources/css/style.css" var="styleCSS" />
<c:url value="resources/css/loginbutton.css" var="loginbuttonCSS" />
<c:url value="resources/js/register.js" var="appJS" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${styleCSS}" rel="stylesheet" />
<link href="${loginbuttonCSS}" rel="stylesheet" />
<script src="${appJS}"></script>

  <style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0; 
	width: 100px;
	height:30px;
	background-color: #32CD32;
	border: 1px solid #555;
}

li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

li {
	text-align: center;
	border-bottom: 1px solid #555;
}

li:last-child {
	border-bottom: none;
}

li a.active {
	background-color: #32CD32;
	color: white;
}

.tooltip {
    position: relative;
    display: inline-block;
   
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;

  /*   Position the tooltip  */
    position: absolute;
    z-index: 1;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}


li a:hover:not (.active ) {
	background-color: #555;
	color: white;
}
</style>  
</head>
	

 <body>

	<div id="container">
	<div id="rightChild">

		 <ul style="text-align: left; position: absolute; right: 300px; top: 50px;"  > 
		
			<li><div  class="tooltip" ><a href="login">Login <span class="tooltiptext">already registered user</span></a></div></li>
			
		</ul> 
	</div>
	</div>
</body> 
 

<body>
	<div id="container">

		<div id="header">
			<h1
				style="color: white; font-size: 30px; text-align: left; position: absolute; left: 50px; top: 20px;">
				<b>FriendsBook</b>
			</h1>	

		</div>



		<div id="leftChild">
			<h1
				style="font-size: 30px; position: absolute; left: 90px; top: 100px;">
				FriendsBook helps you connect and share<br /> people in your life.<br />

				<img
					src="${pageContext.request.contextPath}/resources/images/Friend.png"
					width="500px" height="400px" />

			</h1>

		</div>
		
		<div id="rightChild">
			<h1
				style="color: #1d2129; font-size: 40px; text-align: right; position: absolute; top: 100px;">Create
				an account</h1>

			<h1
				style="color: #1d2129; font-size: 20px; text-align: right; position: absolute; right: 345px; top: 170px;">
				<b>It's free and always will be.</b>
			</h1>


			<form id="regForm" name="s" modelAttribute="user"
				action="registerProcess" method="post">

				<input type="text" required="required" name="firstname"
					onkeyup="valid()" size="15" placeholder="firstname"
					style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 380px; top: 220px;">

				<input type="text" required="required" name="surname"
					onkeyup="valid1()" size="15" placeholder="surname"
					style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 170px; top: 220px;">

				<input type="text" required="required" id="phone" name="phone"
					onkeyup="valid2()" maxlength="10" size="36"
					placeholder="Mobile number"
					style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 170px; top: 260px;">


				<input type="password" required="required" size="36" name="password"
					onkeyup="valid3()" placeholder="Password"
					style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 168px; top: 300px;">


				<h1
					style="color: #1d2129; font-size: 25px; text-align: right; position: absolute; top: 335px;">Birthday:</h1>


				<div class="form-group"
					style="text-align: right; position: absolute; top: 390px;">

					<input type="date" name="dob" onkeyup="valid4()" size="15" id="dob"
						class="form-control"> <span id="error_dob"
						class="text-danger"></span>
				</div>



				<!-- 	<h1
					style="font-size: 11px; text-align: left; position: absolute; right: 200px; top: 385px;">
					Why do i need to provide my <br />date of birth ?
				</h1> -->


				<h1
					style="color: #1d2129; font-size: 25px; text-align: right; position: absolute; top: 418px;">Gender:</h1>

				<p
					style="color: #1d2129; text-align: left; position: absolute; right: 480px; top: 455px; font-size: 25;">
					<input type="radio" name="gender" value="female"><b>female</b>
				</p>
				<p
					style="color: #1d2129; text-align: left; position: absolute; right: 390px; top: 455px; font-size: 25;">
					<input type="radio" name="gender" onkeyup="valid5()" value="male"
						required="required"><b>male</b>
				</p>


				<p
					style="text-align: left; position: absolute; right: 410px; top: 500px;">
					<input type="submit" class="button" value="Create an account">
				</p>
			</form>


			<!-- 	<h1
				style="font-size: 11px; text-align: left; position: absolute; right: 350px; top: 560px;">Create
				a page for a celebrity, brand or business</h1> -->
		</div>

		<div id="footer"></div>
	</div>
				
</body>
</html>