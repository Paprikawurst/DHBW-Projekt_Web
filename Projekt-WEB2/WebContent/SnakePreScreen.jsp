<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
    <title>Contact Us</title>
    <link href="Footer_JSP.css" rel="stylesheet" type="text/css">
    <jsp:include page="Header.jsp"/>
</head>
    <div class="footerSitesContainer">
        <div class="footerContent" id="contact">
            <h1>Snake</h1>

            <hr/>
            <h2>Screenshots:<br>

                <img src="images/Snake/SnakeScreenshot1.png">

                <hr/>
                Beschreibung:
                Snake ist ein Computerspielklassiker,
                bei dem eine sich gerade oder rechtwinklig bewegende Schlange durch ein Spielfeld gesteuert wird.
                <b>Ziel des Spieles</b> ist, die als Futter angebotenen zufällig erscheinenden "Happen" aufzunehmen und Hindernissen,
                einschließlich des eigenen Schlangenkörpers,sowie des Spielfeldrandes auszuweichen.
                Während die Schlange mit jedem Happen wächst,
                wird das Manövrieren bei zunehmend vollerem Spielfeld immer schwieriger.
                <hr/>
                Steuerung:
                Gesteuert wird mit WASD
                <hr>

                <a href="Snake.jsp">
                <button class="button"> Play </button>
                </a>
            </h2>
        </div>
    </div>
    <jsp:include page="Footer.jsp"/>
    </body>
</html>