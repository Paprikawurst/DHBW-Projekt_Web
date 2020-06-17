<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
<head>
    <title>Login</title>
    <link href="Login.css" rel="stylesheet" type="text/css">
    <link href="Login.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Skripte -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<jsp:useBean id="registerBean" class="Login_Register.Login_RegisterBean" scope="session"/>

<!-- Navigationsleiste -->
<header>
    <nav>
        <ul>
            <li><a href="Login.jsp">Login</a></li>
        </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
</header>
<div class="login-page">
    <div class="form">
        <!-- Registrieren -->
        <span style="color:black"><%=(request.getAttribute("Message") == null) ? ""
                : request.getAttribute("Message")%></span>
        <form class="register-form" action="Register" method="post">
            <input name="username" type="email" placeholder="username" required>
            <input name="password" type="password" placeholder="password" required>
            <button>create</button>
            <p class="message">Already registered? <a href="#">Log In</a></p>
        </form>
        <!-- Login -->
        <form class="login-form" action="Login" method="post">
            <input name="username" type="email" placeholder="Username" required>
            <input name="password" type="password" placeholder="password" required>
            <button>login</button>
            <p class="message">Not registered yet? <a href="#">Create an account!</a></p>
        </form>
    </div>
</div>
</body>

<!-- Skript für Login,Register und Icon anklicken -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.menu-toggle').click(function () {
            $('nav').toggleClass('active')
        })
        $('ul li').click(function () {
            $(this).siblings().removeClass('active');
            $(this).toggleClass('active');
        })
        $('.message a').click(function () {
            $('form').animate({
                height: "toggle",
                opacity: "toggle"
            }, "slow");
        });
    })
</script>
</html>