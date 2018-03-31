<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/css/font-awesome.min.css"
	rel="stylesheet">

<link href="CSS/home.css" rel="stylesheet" type="text/css">
<link href="CSS/login.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		// Initialize form validation on the registration form.
		// It has the name attribute "registration"
		$('#btnlogin')
				.click(
						function() {
							$('#login')
									.validate(
											{
												// Specify validation rules
												rules : {
													// The key name on the left side is the name attribute
													// of an input field. Validation rules are defined
													// on the right side
													username : "required",
													password : {
														required : true,
														minlength : 5
													}
												},
												// Specify validation error messages
												messages : {
													username : "Please enter userid",

													password : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long"
													},

												},
												// Make sure the form is submitted to the destination defined
												// in the "action" attribute of the form when valid
												submitHandler : function(form) {
													form.submit();
												}
											});
						});

	});
</script>
</head>
</head>
<body>
	<header>
	<div class="row">
		<div class="logo">
			<img src="images/logo.png">
		</div>
		<ul class="main-nav">
			<li><a href="/">HOME</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="listnews">NEWS</a></li>
			<li><a href="login">LOGIN</a></li>
		</ul>
	</div>
	<div class="hero">
		<h1>
			WELCOME TO ONLINE QUIZ <br> HCMC UNIVERSITY OF TECHNOLOGY AND
			EDUCATION
		</h1>

	</div>
	</header>

	<section class="features">
	<h3 class="text-center">LOGIN</h3>
	<div class="container">
		<form action="login" method="get" >
			<label for="username">Username</label> <input type="text"
				name="username" id="username" placeholder="John123"  value="${login.username}"/> <label
				for="password">Password</label> <input type="password"
				name="password" id="password"
				placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" value="${login.password}" /> 
			<button type="submit" value="Save">Login</button>

		</form>
	</div>
	</section>
	<section class="school">
	<ul class="school-showcase">
		<li><figure class="school-photo"> <img
				src="images/hcmute.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="images/hcmute1.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="images/hcmute2.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="images/hcmute3.jpg"> </figure></li>

	</ul>
	</section>
	<section class="navbar-bottom">
	<h3 class="text-center">CONTACT US</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p>Copyright @ 2017 HCMUTE-All right reserved</p>
				<p>Mobile:+1247171789</p>
			</div>
		</div>
	</div>
	</section>

</body>
</html>