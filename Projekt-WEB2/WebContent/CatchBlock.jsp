<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>CatchBlock</title>
  	<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
  	<script src="js/pixi.min.js"></script >
  	<jsp:include page="Header.jsp"/>	
	<div class="mainpage">
    <div id="gameDiv"></div>
    <script src="js/CatchBlock.js"></script>
    </div>
    
   <jsp:include page="Footer.jsp"/>	
</body>
</html>