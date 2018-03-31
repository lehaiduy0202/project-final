<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager News</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="FONTS/css/font-awesome.min.css" rel="stylesheet">
<link href="CSS/home.css" rel="stylesheet" type="text/css">
<link href="CSS/admin-user.css" rel="stylesheet" type="text/css">
<link href="CSS/add_button.css" rel="stylesheet" type="text/css">
<link href="CSS/listnews.css" rel="stylesheet" type="text/css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(function() {
		$("#btn-search")
				.click(
						function() {
							$(".error").hide();
							var hasError = false;
							var searchReg = /^[a-zA-Z0-9-]+$/;
							var searchVal = $("#search-text").val();
							if (searchVal == '') {
								$("#search-text")
										.after(
												'<span class="error">Please enter a search term.</span>');
								hasError = true;
							} else if (!searchReg.test(searchVal)) {
								$("#search-text")
										.after(
												'<span class="error">Enter valid text.</span>');
								hasError = true;
							}
							if (hasError == true) {
								return false;
							}
						});
	});
</script>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
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
				<li><a href="">HELP</a></li>
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
	<div class="container-fluid display-table">
		<div class="row display-table-row">

			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
				<div class="row">
					<div class="col-md-7">
						<nav class="navbar-default pull-left">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
									data-toggle="offcanvas" data-target="#side-menu"
									aria-expanded="false">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>
						</nav>
					</div>
					<div class="col-md-5">
						<div class="header-rightside">
							<ul class="list-inline header-top pull-right">

								<li><a href="#"><i class="fa fa-envelope"
										aria-hidden="true"></i></a></li>
								<li><a href="#" class="icon-info"> <i
										class="fa fa-bell" aria-hidden="true"></i> <span
										class="label label-primary">3</span>
								</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"><img
										src="http://jskrishna.com/work/merkury/images/user-pic.jpg"
										alt="Admin"> <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li>
											<div class="navbar-content">
												<span>JS Krishna</span>
												<p class="text-muted small">me@jskrishna.com</p>
												<div class="divider"></div>
												<a href="#" class="view btn-sm active">View Profile</a>
											</div>
										</li>
									</ul></li>
							</ul>
						</div>
					</div>
					<c:forEach var="NewsAdmin" items="${newslist}">
						<div class="col-md-10 blogShort">
						<img id="images" src="listnews?id=${NewsAdmin.id}">
							<h2>${NewsAdmin.title}</h2>
							<i>${NewsAdmin.date}</i>
							<article>
								<p>${NewsAdmin.content}</p>
							</article>
							<hr>
						</div>

					</c:forEach>

					<div class="col-md-12 gap10"></div>
				</div>

			</div>
		</div>
	</div>
	<div class="user-dashboard">

		<div class="row">
			<div class="col-md-5 col-sm-5 col-xs-12 gutter"></div>
			<div class="col-md-7 col-sm-7 col-xs-12 gutter"></div>
		</div>
	</div>
	<section class="school">
		<ul class="school-showcase">
			<li><figure class="school-photo">
					<img src="images/hcmute.jpg">
				</figure></li>
			<li><figure class="school-photo">
					<img src="images/hcmute1.jpg">
				</figure></li>
			<li><figure class="school-photo">
					<img src="images/hcmute2.jpg">
				</figure></li>
			<li><figure class="school-photo">
					<img src="images/hcmute3.jpg">
				</figure></li>
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