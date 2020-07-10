<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
    <title>Contact Us</title>
    <link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
    <jsp:include page="Header.jsp"/>
</head>
    <div class="GamesSitesContainer" id="games">
        <div class="GamesContent" >
            <h1>Snake</h1>
            <hr/>
            <h2>Screenshots:<br>
                <img src="images/Snake/SnakeScreenshot1.png">
                <hr>
                Beschreibung:
                Snake ist ein Computerspielklassiker,
                bei dem eine sich gerade oder rechtwinklig bewegende Schlange durch ein Spielfeld gesteuert wird.
                <b>Ziel des Spieles</b> ist, die als Futter angebotenen zufällig erscheinenden "Happen" aufzunehmen und Hindernissen,
                einschließlich des eigenen Schlangenkörpers,sowie des Spielfeldrandes auszuweichen.
                Während die Schlange mit jedem Happen wächst,
                wird das Manövrieren bei zunehmend vollerem Spielfeld immer schwieriger.
                Pro Happen bekommt der Spieler Punkte, die er im Shop gegen Skins eintauschen kann!
                <hr>
                Steuerung:
                Gesteuert wird mit WASD
                <hr>                
                <a href="Snake.jsp" class="startGame">Play</a>
            </h2>
        </div>
    </div>
    <jsp:include page="Footer.jsp"/>
    </body>
</html>