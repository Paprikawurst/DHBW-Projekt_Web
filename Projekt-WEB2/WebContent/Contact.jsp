 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty sessionScope['email']}">
	<c:set var="Message" scope="request" value="You are not logged in!"/>
     <jsp:forward page="Login.jsp"></jsp:forward>
</c:if>

<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
	<link href="Header_Footer.css" rel="stylesheet" type="text/css">
  	<link href="Footer_JSP.css" rel="stylesheet" type="text/css">
  	<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
  	<!-- Skripte -->
  	<script src="Methods.js"></script>
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body onload="onLoading()">

  <header>
    <div> <a class="logo" href="Home.jsp">Home</a></div>
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
      	<li><a href="/Projekt-WEB2/Login_Register/Shop">Shop</a></li>
      	<li><a href="/Projekt-WEB2/Login_Register/Logout">Settings</a></li>
        <li><a href="/Projekt-WEB2/Logout">Logout</a></li>
	  </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
  </header>
  <div id="contact">
  	<div class="contact">
  	<h1>Kontaktiere uns</h1>
  		<form action="#">
    		<label for="fname">First Name</label>
    		<input type="text" id="fname" name="firstname" placeholder="Your name..">
   			<label for="lname">Last Name</label>
    		<input type="text" id="lname" name="lastname" placeholder="Your last name..">
    		<label for="country">Country</label>    
    		<label for="subject">Subject</label>
    		<textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
    		<input type="submit" value="Submit">
  		</form>
  		<hr/>
  		<h2>Oder kontaktiere uns unter<br>
		Telefon: 0934/1232<br />
		E-Mail: max_mustermann@gmx.net
  		</h2>
  	</div>
   </div>
   <div class="footer">
  		<div class="innerFooter">
  			<div class="firstInnerFooterChild">
  				<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png">
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Terms of use?</h2>
  				<a href="Terms.jsp" >Terms of use</a>
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Data Protection</h2>
  				<a href="DataProtection.jsp" >What happens to your data?</a>
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Any Questions?</h2>
  				<a href="Contact.jsp" >Contact US</a>
  			</div>
  			<div class="otherInnerFooterChild">
  				<h2>Who are we?</h2>
  				<a href="Imprint.jsp" >Imprint</a>
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