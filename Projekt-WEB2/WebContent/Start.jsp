<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Metadaten  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"
          charset="utf-8"/>
    <!-- Titel  -->
    <title>Welcome</title>
    <!-- CSS  -->
    <link href="Login.css" rel="stylesheet" type="text/css">
    <link href="Start.css" rel="stylesheet" type="text/css">
    <!-- Test ob eingeloggt, wenn ja direkte Weiterleitung zu den Spielen -->
    <c:choose>
        <c:when test="${empty sessionScope['email']}"/>
        <c:otherwise>
            <c:redirect url="Games.jsp"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<!-- Container linker Text oben -->
<div id="leftAlignedText">
    <img src="./images/JSP_Elemente/welcome.png" alt=" Welcome...">
</div>
<!-- Button Weiterleitung -->
<a href="Games.jsp">
    <button id="button">Play</button>
</a>
<!-- Container rechter Text unten -->
<div id="rightAlignedText">
    <img src="./images/JSP_Elemente/by.png" alt="By...">
</div>
</body>
</html>