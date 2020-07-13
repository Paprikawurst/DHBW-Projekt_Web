<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<!-- Titel -->
<title>CatchBlock</title>
<!-- Scripte  -->
<script src="js/pixi.min.js"></script>
<script src="js/CatchBlock.js" type="text/javascript"></script>
<!-- CSS -->
<link href="Snake_CatchBlock.css" rel="stylesheet" type="text/css">
<!-- Header  -->
<jsp:include page="Header.jsp" />
<jsp:useBean id="shopBean" class="Shop_Skins.Shop_Bean" scope="session" />
<!-- Container Hauptseite unter der Navigation-Leiste  -->
<div id="mainpage">
	<!-- Hier ist das Spiel drinnen  -->
	<div id="data">
        	

    </div>
	<div id="gameDiv"></div>
	<script>catchBlocken("${shopBean.readMyChossenSkin(sessionScope['email'],'CatchBlock')}")</script>
</div>
<!-- Footer -->
<jsp:include page="Footer.jsp" />
</body>
</html>