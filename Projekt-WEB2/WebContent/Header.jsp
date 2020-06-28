<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
<head>
    <title>Login</title>
    <link href="Header_Footer.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Skripte -->
	<script src="Methods.js"></script>   
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <header>
    <div> <a class="logo" href="Start.jsp">Home</a></div>
    <!-- Navigationsleiste -->
    <nav>
      <ul>
      <li class="sub-menu"><a href="#">High-Scores</a>
					<ul>
						<li><a href="Snake.jsp">Snake</a></li>
						<li><a href="Space-Invaders.jsp">Space-Invaders</a></li>
					</ul>
		</li>
        <li class="sub-menu"><a href="#">Games</a>
					<ul>
						<li><a href="Snake.jsp">Snake</a></li>
						<li><a href="Space-Invaders.jsp">Space-Invaders</a></li>
					</ul>
		</li>
      	<li><a href="Shop.jsp">Shop</a></li>
      	<li><a href="Settings.jsp">Settings</a></li>
        <li><a href="/Projekt-WEB2/Logout">Logout</a></li>
	  </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
  </header>

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