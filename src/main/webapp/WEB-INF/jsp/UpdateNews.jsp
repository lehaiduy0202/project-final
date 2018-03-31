
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update News</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/jquery.datetimepicker.css" rel="stylesheet">
<script src="static/js/jquery.datetimepicker.full.js">
	
</script>
<link href="FONTS/css/font-awesome.min.css" rel="stylesheet">
<link href="static/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="static/js/bootstrap-datetimepicker.min.js" rel="stylesheet">
<link href="CSS/home.css" rel="stylesheet" type="text/css">
<link href="CSS/AddAdmin_User.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="CkEditor\ckeditor\adapters\jquery.js"></script>
<script src="CkEditor\ckeditor\ckeditor.js"></script>
<script>
	$(function() {
		// Initialize form validation on the registration form.
		// It has the name attribute "registration"
		$("form[name='adduser']")
				.validate(
						{
							// Specify validation rules
							rules : {
								// The key name on the left side is the name attribute
								// of an input field. Validation rules are defined
								// on the right side
								userid : "required",
								username : "required",
								fullname : "required",
								birthday : "required",
								email : "required",
								classname : "required",
								password : {
									required : true,
									minlength : 5
								}
							},
							// Specify validation error messages
							messages : {
								userid : "Please enter userid",
								username : "Please enter username",
								fullname : "Please enter fullname",
								birthday : "Please enter birthday",
								email : "Please enter email",
								classname : "Please enter classname",
								password : {
									required : "Please enter Password",
									minlength : "Please enter passwprd longer than 5 characters"
								},
							},
							// Make sure the form is submitted to the destination defined
							// in the "action" attribute of the form when valid
							submitHandler : function(form) {
								form.submit();
							}
						});
		$
		{
			msg
		}
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

				<li><a href="">ABOUT</a></li>
				<li><a href="listnews">NEWS</a></li>
				<li><a href="/">LOG OUT</a></li>
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
					<div class="container">
						<br> <br> <br>

						<section class="features">
							<h3 class="text-center">UPDATE NEWS</h3>
							<div class="container">
								<form action="update" method="Get" >
									<input type="hidden" name="id" value="${NewsAdmin.id}">
									<label for="">Title</label> <input type="text" name="title"
										id="title" value="${NewsAdmin.title}" /> <label for="dest">Description</label>
									<input type="text" name="description" id="description"
										value="${NewsAdmin.description}" /> <label for="Content">Content</label>
									<textarea class="ckeditor" id="editor1" name="content"
										cols="80" rows="10" value="${NewsAdmin.content}">
                                     </textarea>
									<button type="submit" onclick="return confirm('Add Success!')"
										value="Save">ADD</button>

								</form>
							</div>

						</section>
					</div>

				</div>

				<div class="user-dashboard">

					<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 gutter"></div>
						<div class="col-md-7 col-sm-7 col-xs-12 gutter"></div>
					</div>
				</div>
			</div>
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
	<script>
		$("#datetimepicker").datetimepicker();
	</script>
</body>
</html>