<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Snake</title>
  	<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
  	<jsp:include page="Header.jsp"/>
<div class="mainpage">
    <canvas id ="snake" width="608" height="608"></canvas>
    <script src="js/snake.js"></script>
   <jsp:include page="Footer.jsp"/>	
</div>
</body>
</html>