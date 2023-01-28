<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Login Form Using HTML And CSS Only</title>
</head>
<body>
	<div class="container" id="container">
		<div class="form-container log-in-container">
			<form action="#">
				<h1 class="title">Login</h1>
				<div class="social-container">
					<!-- <a href="#" class="social"><i class="fa fa-facebook fa-2x"></i></a> -->
			<!--		<a href="#" class="social"><i class="fab fa fa-twitter fa-2x"></i></a> -->
				</div>
				<span><a href="#">Don't Have Account</a></span>
				<input type="email" name="email" placeholder="Email" />
				<input type="password" name="password" placeholder="Password" />
				<a href="#">Forgot your password?</a>
				<button type="submit">Log In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
			  <img alt="" src="CramSession.gif" width="250" height="250">
			   <!--  <video width="250" height="250" controls="false" autoplay="autoplay">
				  <source src="CramSession.mp4" type="video/mp4">
				</video> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>