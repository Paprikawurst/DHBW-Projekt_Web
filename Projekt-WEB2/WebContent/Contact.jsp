 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
	<title>Contact Us</title>
  	<link href="Footer_JSP.css" rel="stylesheet" type="text/css"> 
  <jsp:include page="Header.jsp"/>	
  <div id="footerSitesContainer">
  	<div id="footerContent" class="contact">
  	<h1>Kontaktiere uns</h1>
  		<form action="#">
    		<label for="fname">First Name</label>
    		<input type="text" id="fname" name="firstname" placeholder="Your name..">
   			<label for="lname">Last Name</label>
    		<input type="text" id="lname" name="lastname" placeholder="Your last name..">  
    		<label for="subject">Subject</label>
    		<textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
    		<input type="submit" value="Submit">
  		</form>
  		<hr/>
  		<h2>Or contact us personally<br>
		Telefon: 0934/1232<br />
		E-Mail: max_mustermann@gmx.net
  		</h2>
  	</div>
   </div>
   <jsp:include page="Footer.jsp"/>	
</body>
</html>