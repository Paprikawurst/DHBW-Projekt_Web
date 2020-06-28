<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
  	<link href="Header_Footer.css" rel="stylesheet" type="text/css">
  	<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
  	<!-- Skripte -->
  	<script src="Methods.js"></script>
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body onload="onLoading()">
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