
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Events</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<c:url value="/resources/css/style.css" var="styleCSS" />
<c:url value="/resources/css/navigation.css" var="navigationCSS" />
<c:url value="/resources/css/footer.css" var="footerCSS" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${styleCSS}" rel="stylesheet" />
<link href="${navigationCSS}" rel="stylesheet" />
<link href="${footerCSS}" rel="stylesheet" />
</head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 80%;
	margin: auto;
} 
</style>

<body background="${pageContext.request.contextPath}/resources/images/c1.jpg">
	<div id="container">

		<div id="header">
			<h1
				style="color: white; font-size: 30px; text-align: left; position: absolute; left: 50px; top: 20px;">
				<b>FriendsBook</b>
			</h1>
			<table>
				<tr>
					<td
						style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 50px; top: 40px;"><a
						href="register">Logout</a></td>
				</tr>
				
				
				<tr>
					<td
						style="color: #1d2129; font-size: 20px; text-align: left; position: absolute; right: 150px; top: 40px;"><a
						href="loginSuccessFul">Back</a></td>
				</tr>
				
			</table>
			
			<div
				style="color: white; font-size: 20px; text-align: left; position: absolute; left: 380px; top: 70px;"
				class="nav_bar">


				<a href="news">News</a> <a href="contact">Contact</a> <a
					href="about">About </a> <a href="profile">Profile </a> <a
					href="events">Events </a>
			</div>


		</div>

	</div>
</body>

<body>

	<div class="container">
		<h1 style="text-align:center; color:red; font-weight:bold;">Upcoming Events</h1>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img
						src="${pageContext.request.contextPath}/resources/images/img.jpg"
						alt="jokes 1" style=" width:1400px; height:300px;" >
			</div>


				<div class="item">
					<img
						src="${pageContext.request.contextPath}/resources/images/imga.jpg"
						alt="jokes 2"  style="width:1400px;height:300px;" >
				</div>
				<div class="item">
					<img
						src="${pageContext.request.contextPath}/resources/images/imgc.jpg"
						alt="jokes 3"  style=" width:1400px; height:300px;" >
				</div>
		
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- corousel end -->

	</div>
	
	
<section>
<div style="position: relative; top: 210px;">
	<div class="container-fluid"
		style="background-color: #666; border-top: solid 1px #FFF;">
		<div class="col-md-12">
			<div class="col-md-8">
				<h5 style="font-size: 16px; color: #fff; text-align: center;">
					Copyright &copy; 2012-FRIENDSBOOK | All Rights Reserved</h5>
			</div>
			<div class="col-md-4 footer_para">
				<h5 class="pull-right" style="color: #FFF; text-align: center;">
					Designed By <a href="http://www.nisum.com" target="_blank">Nisum
						Technologies</a>
				</h5>
			</div>
		</div>
	</div>
	</div>
	</section>

</body>
</html>
