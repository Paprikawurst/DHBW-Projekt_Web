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
<title>Games</title>
<!-- Skripte  -->
<script src="js/Methods.js" type="text/javascript"></script>
<!-- CSS  -->
<link href="Games.css" rel="stylesheet" type="text/css">
<!-- Header  -->
<jsp:include page="Header.jsp" />
<!-- Container Hauptseite unter der Navigation-Leiste  -->
<div id="mainpage">
	<div class="box1">
		<!-- Weiterleitung ans Spiel -->
		<a href="CatchBlockPreScreen.jsp" hreflang="de" target="_self"><img
			src="images/CatchBlock/unknown.png" alt="CatchBlock" width="100%"
			height="100%" /></a> <label class="other"> CatchBlock</label>
	</div>
	<!-- Zelle2 -->
	<%--                <div class="games">--%>
	<!-- Zellen Inhalt Container -->
	<div class="box2">
		<!-- Weiterleitung ans Spiel -->
		<a href="SnakePreScreen.jsp" hreflang="de" target="_self"><img
			src="images/Snake/ground.png" alt="Snake" width="100%" height="100%" /></a>
		<label class="other"> Snake</label>
	</div>
</div>
<!-- Footer -->
<jsp:include page="Footer.jsp" />
</body>
</html>