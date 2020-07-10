<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<title>Catch Block</title>
<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
<jsp:include page="Header.jsp" />
<div id="GamesSitesContainer" id="games">
	<div id="GamesContent">
		<h1>Snake</h1>
		<hr />
		<h2>
			Screenshots:<br> <img src="images/unknown.png" alt="">
			<hr>
			Beschreibung: Snake ist ein Computerspielklassiker, bei dem eine
			Figur gesteurt wird um die fallenden Objekte einzusammeln. <b>Ziel
				des Spieles</b> ist, die herunterfallenden Objekte einzusammeln.
			Verschiedene Sachen geben verschiedene Punkte. Jedoch muss man
			auspassen. Sammelt man ein negatives Objekt ein, bekommt man 1 von 3
			Leben abgezogen. Wenn man kein Leben mehr hat ist das Spiel beendet.
			Pro Objekt bekommt der Spieler Punkte, die er im Shop gegen Skins
			eintauschen kann!
			<hr>
			Steuerung: Gesteuert wird mit Pfeiltasten
			<hr>
			<a href="CatchBlock.jsp" class="startGame">Play</a>
		</h2>
	</div>
</div>
<jsp:include page="Footer.jsp" />
</body>
</html>