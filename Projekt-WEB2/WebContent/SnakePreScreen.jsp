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
<title>Play Snake!</title>
<!-- CSS -->
<link href="PreScreen.css" rel="stylesheet" type="text/css">
<!-- Header -->
<jsp:include page="Header.jsp" />
<!-- Inhaltscontainer unter der Nav-Leiste  -->
<div id="GamesSitesContainer">
	<!-- Container mit Inhalt der Beschreibung  -->
	<div id="GamesContent">
		<h1>Snake</h1>
		<hr>
		Screenshot:<br> <img src="images/Snake/SnakeScreenshot1.png"
			alt="Snake">
		<hr>
		Beschreibung: Snake ist ein Computerspielklassiker, bei dem eine sich
		gerade oder rechtwinklig bewegende Schlange durch ein Spielfeld
		gesteuert wird. <b>Ziel des Spieles</b> ist, die als Futter
		angebotenen zufällig erscheinenden "Happen" aufzunehmen und
		Hindernissen, einschließlich des eigenen Schlangenkörpers,sowie des
		Spielfeldrandes auszuweichen. Während die Schlange mit jedem Happen
		wächst, wird das Manövrieren bei zunehmend vollerem Spielfeld immer
		schwieriger. Pro Happen bekommt der Spieler Punkte, die er im Shop
		gegen Skins eintauschen kann!
		<hr>
		Steuerung: Gesteuert wird mit WASD
		<hr>
		<!-- Weiterleitung zum Spiel  -->
		<a href="Snake.jsp" hreflang="de" id="startGame">Play</a>
	</div>

</div>
<!-- Footer  -->
<jsp:include page="Footer.jsp" />
</body>
</html>