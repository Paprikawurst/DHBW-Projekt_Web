<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<!-- Titel -->
<title>CatchBlock</title>
<!-- Scripte  -->
<script src="js/pixi.min.js" type="text/javascript"></script>
<script src="js/CatchBlock.js" type="text/javascript"></script>
<!-- CSS -->
<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
<!-- Header  -->
<jsp:include page="Header.jsp" />
<!-- Container Hauptseite unter der Navigation-Leiste  -->
<div id="mainpage">
	<!-- Hier ist das Spiel drinnen  -->
	<div id="gameDiv"></div>
</div>
<!-- Footer -->
<jsp:include page="Footer.jsp" />
</body>
</html>