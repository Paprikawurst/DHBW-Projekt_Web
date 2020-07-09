<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
<head>
    <title>Welcome</title>
    <link href="Login.css" rel="stylesheet" type="text/css">
    <link href="Start.css" rel="stylesheet" type="text/css">
<c:choose>
  <c:when test="${empty sessionScope['email']}">
  </c:when>
  <c:otherwise>
 	 <c:redirect url="Games.jsp"/>
  </c:otherwise>
</c:choose>
</head>

<body>

<div class="leftAlignedText">
    <img src="./images/welcome.png" alt=" Welcome...">
</div>

<a href="Games.jsp" >
    <button class="button"> Play </button>
</a>

<div class="rightAlignedText">
    <img src="./images/by.png" alt="By...">
</div>


</body>

</html>