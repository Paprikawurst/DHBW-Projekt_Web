<!-- JSTL  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- CSS  -->
<link href="Header_Footer.css" rel="stylesheet" type="text/css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<!-- JSTL IF-ELSE Auswahl Nav-Leiste  -->
	<c:choose>
		<c:when test="${empty sessionScope['email']}">
			<!-- Nav-Leiste LoggedOut  -->
			<jsp:include page="Nav_LoggedOut.jsp" />
		</c:when>
		<c:otherwise>
			<!-- Nav-Leiste LoggedIn  -->
			<jsp:include page="Nav_LoggedIn.jsp" />
		</c:otherwise>
	</c:choose>