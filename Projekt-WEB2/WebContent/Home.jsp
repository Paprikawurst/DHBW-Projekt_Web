 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
        Login_Register.Login_RegisterBean log= new Login_Register.Login_RegisterBean();
           boolean loggedIn =log.loggedIn(session,request,response);
           if(!loggedIn) {
               request.setAttribute("Message", "You are not logged in!");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
           }
   %>

<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
  	<link href="Header.css" rel="stylesheet" type="text/css">
  	<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
  	<!-- Skripte -->
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <header>
    <div> <a class="logo" href="Home.jsp">Home</a></div>
    <!-- Navigationsleiste -->
    <nav>
      <ul>
        <li><a href="/Projekt-WEB2/Login_Register/Logout">Logout</a></li>
	  </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
  </header>
   <div class="footer">
  		<div class="innerFooter">
  			<div class="firstInnerFooterChild">
  				<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png">
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Need Help?</h2>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Need Help?</h2>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Need Help?</h2>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  				<a href="#" >Terms</a>
  			</div>
  		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
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
          height: "toggle",
          opacity: "toggle"
        }, "slow");
      });
    })
  </script>
</body>
</html>