<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<head>
<title>Snake</title>
<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
<jsp:include page="Header.jsp" />
<div id="mainpage">
	<div id="gameDiv">
		<canvas id="snake" width="608px" height="608px"></canvas>
		<script src="js/snake.js" type="text/javascript"></script>
	</div>
</div>
<jsp:include page="Footer.jsp" />
</body>
</html>