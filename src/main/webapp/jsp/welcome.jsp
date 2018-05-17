<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<c:url value="/resources/css/style.css" var="styleCSS" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${styleCSS}" rel="stylesheet" />

</head>
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

	</div>
</body>
<body>
	<table>
		
		<tr>
			<td
				style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 200px; top: 210px;">Hi ${firstname}, Your Successfully Registered.<br/> Please Login Here.
				</td>
		</tr>
		<tr>
		</tr>
		<tr>
		</tr>
		<tr>
			<td
				style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 380px; top: 300px;"><a
				href="register">Login</a></td>
		</tr>
	</table>
</body>
</html>