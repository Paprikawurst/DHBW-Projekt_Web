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
	<title>Contact Us</title>
  	<link href="Footer_JSP.css" rel="stylesheet" type="text/css"> 
  <jsp:include page="Header.jsp"/>	
  <div class="footerSitesContainer">
  	<div class="footerContent" id="contact">
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
   <jsp:include page="Footer.jsp"/>	
</body>
</html>