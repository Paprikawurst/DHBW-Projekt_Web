<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Metadaten  -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<!-- Titel  -->
<title>Contact Us</title>
<!-- CSS -->
<link href="Footer_JSP.css" rel="stylesheet" type="text/css">
<!--  Header -->
<jsp:include page="Header.jsp" />
<!-- Inhaltscontainer unter der Nav-Leiste  -->
<div id="footerSitesContainer">
	<!-- Container mit dem Formular -->
	<div id="footerContent" class="contact">
		<!-- Kontaktformular  -->
		<h1>Kontaktiere uns</h1>
		<form action="#">
			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.."> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."> <label
				for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 200px" cols="" rows=""></textarea>
			<input type="submit" value="Submit">
		</form>
		<hr>
		<h1>Or contact us personally</h1>
		<br>
		<h1>Telefon:</h1>
		<h1>0934/1232</h1>
		<h1>E-Mail:</h1>
		<h1>max_mustermann@gmx.net</h1>
	</div>
</div>
<!-- Footer  -->
<jsp:include page="Footer.jsp" />
</body>
</html>