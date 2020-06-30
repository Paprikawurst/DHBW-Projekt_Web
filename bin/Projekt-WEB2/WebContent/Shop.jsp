<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty sessionScope['email']}">
	<c:set var="Message" scope="request" value="You are not logged in!"/>
     <jsp:forward page="Login.jsp"></jsp:forward>
</c:if>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Shop</title>
  	<link href="Shop.css" rel="stylesheet" type="text/css">
    <jsp:include page="Header.jsp"/>	
  

<div class="mainpage">
<div class="sidebar">
  		<a  id="exchange2" onclick="openSide(event, 'exchange')" class="tablinks" >Exchange</a>
  		<a id="purchases2" onclick="openSide(event, 'purchases')" class="tablinks">Purchases</a>
 		<a  id="change2" onclick="openSide(event, 'change')" class="tablinks">Change Skin</a>
</div>

<div id="exchange" class="tabcontent">
  	<p>XDDDDDDDDDDDD</p>
  </div>

  <div id="purchases" class="tabcontent">
 	   	
  </div>

  <div id="change" class="tabcontent">
	   
   	
  </div>
  <script>onLoading2()</script> 
</div>

  
<jsp:include page="Footer.jsp"/>	
</body>
</html>