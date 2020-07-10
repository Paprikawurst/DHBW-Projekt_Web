<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<title>Login</title>
<link href="Login.css" rel="stylesheet" type="text/css">
<link href="Header_Footer.css" rel="stylesheet" type="text/css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- Skripte -->
</head>
<body>
	<jsp:useBean id="registerBean"
		class="Login_Register.Login_RegisterBean" scope="session" />
	<header>
		<div>
			<a class="logo" href="Start.jsp">Home</a>
		</div>
		<nav>
			<ul>
				<li><a href="Login.jsp">Login</a></li>
			</ul>
		</nav>
		<div class="menu-toggle">
			<i class="fa fa-bars" aria-hidden="true"></i>
		</div>
	</header>
	<div id="login-page">
		<div id="form">
			<!-- Registrieren -->
			<span style="color: red"><c:out
					value="${requestScope.MessageLogin}" /></span>
			<form id="register-form" action="Register" method="post">
				<input name="username" type="email" placeholder="username" required>
				<input name="password" type="password" placeholder="password"
					required>
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Log In</a>
				</p>
			</form>
			<!-- Login -->
			<form id="login-form" action="Login" method="post">
				<input name="username" type="email" placeholder="Username" required>
				<input name="password" type="password" placeholder="password"
					required>
				<button>login</button>
				<p class="message">
					Not registered yet? <a href="#">Create an account!</a>
				</p>
			</form>
		</div>
	</div>
</body>

<!-- Skript für Login,Register und Icon anklicken -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.menu-toggle').click(function() {
			$('nav').toggleClass('active')
		})
		$('ul li').click(function() {
			$(this).siblings().removeClass('active');
			$(this).toggleClass('active');
		})
		$('.message a').click(function() {
			$('form').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
	})
</script>
</html>