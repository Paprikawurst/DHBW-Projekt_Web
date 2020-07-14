<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Metadaten  -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<!-- Titel  -->
<title>Login</title>
<!-- CSS  -->
<link href="Login.css" rel="stylesheet" type="text/css">
<link href="Header_Footer.css" rel="stylesheet" type="text/css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- Bean setzen  -->
<jsp:useBean id="registerBean" class="Login_Register.Login_RegisterBean"
	scope="session" />
</head>
<body>
	<!-- Navigationsleiste Login  -->
	<header>
		<div>
			<a class="logo" href="Start.jsp" hreflang="de" target="_self">Home</a>
		</div>
		<nav>
			<ul>
				<li><a href="Login.jsp" hreflang="de" target="_self">Login</a></li>
			</ul>
		</nav>
		<div class="menu-toggle">
			<i class="fa fa-bars" aria-hidden="true"></i>
		</div>
	</header>
	<!-- Container Login  -->
	<div id="login-page">
		<!-- Container Formular  -->
		<div id="form">
			<!-- Ausgabe Status Durchführung Registrieren -->
			<span style="color: red"><c:out
					value="${requestScope.MessageLogin}" /></span>
			<!-- Formular Registrieren  -->
			<form id="register-form" action="Register" method="post"
				autocomplete="on" target="_self" spellcheck="true"
				enctype="application/x-www-form-urlencoded" novalidate="novalidate">
				<input name="username" type="email" placeholder="username"
					autofocus="autofocus" maxlength="16" required="required"
					autocomplete="on"> <input name="password" type="password"
					placeholder="password" required="required">
				<button>create</button>
				<p class="message">
					Already registered? <a href="#" hreflang="de" target="_self">Log
						In</a>
				</p>
			</form>
			<span style="color: red"><c:out
					value="${requestScope.MessageRegister}" /></span>
			<!-- Formular Login  -->
			<form id="login-form" action="Login" method="post" autocomplete="on"
				target="_self" spellcheck="true"
				enctype="application/x-www-form-urlencoded" novalidate="novalidate">
				<input name="username" type="email" placeholder="Username"
					autofocus="autofocus" maxlength="16" required="required"
					autocomplete="on"> <input name="password" type="password"
					placeholder="password" required="required">
				<button>login</button>
				<p class="message">
					Not registered yet? <a href="#" hreflang="de" target="_self">Create
						an account!</a>
				</p>
			</form>
		</div>
	</div>

<!-- JQuery  -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	type="text/javascript"></script>
<!-- Script anklicken Symbole von JQuery  -->
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
</body>
</html>