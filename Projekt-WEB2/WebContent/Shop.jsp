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
  
  </div>
<jsp:include page="Footer.jsp"/>	
</body>
</html>