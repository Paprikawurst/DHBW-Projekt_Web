<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="Header_Footer.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Skripte -->
	<script src="Methods.js"></script>   
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <c:choose>
  <c:when test="${empty sessionScope['email']}">
	<jsp:include page="Nav_NotLoggedIn.jsp"/>
  </c:when>
  <c:otherwise>
 	 <jsp:include page="Nav_LoggedIn.jsp"/>
  </c:otherwise>
</c:choose>