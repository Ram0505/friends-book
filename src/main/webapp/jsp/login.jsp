<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link href="bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<c:url value="resources/css/style.css" var="styleCSS" />
<c:url value="resources/js/app.js" var="appJS" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${styleCSS}" rel="stylesheet" />
<script src="${appJS}"></script>
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<div class="con">
	<body>
		<%-- <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
			<table align="center"> --%>
				<tr>
					<td><form:label path="phone">mobile number: </form:label></td>
					<td><form:input path="phone" name="phone" id="phone" />
					</td>
				</tr>
				<tr>
					<td><form:label path="password">Password:</form:label></td>
					<td><form:password path="password" name="password"
							id="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td align="left"><form:button id="login" name="login">Login</form:button>
					</td>
				</tr>
				<tr></tr>
				<tr>
					<td></td>
					<td><a href="home.jsp">Home</a></td>
				</tr>
			</table>
		<%-- </form:form> --%>
		<table align="center">
			<tr>
				<td style="font-style: italic; color: red;">${message}</td>
			</tr>
		</table>
	</body>

</div>
</html>