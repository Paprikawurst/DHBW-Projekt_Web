<link href="Header_Footer.css" rel="stylesheet" type="text/css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:choose>
		<c:when test="${empty sessionScope['email']}">
			<header>
				<div>
					<a class="logo" href="Start.jsp">Home</a>
				</div>
				<!-- Navigationsleiste -->
				<nav>
					<ul>
						<li class="sub-menu"><a href="Games.jsp">Games</a>
							<ul>
								<li><a href="SnakePreScreen.jsp">Snake</a></li>
								<li><a href="CatchBlockPreScreen.jsp">CatchBlock</a></li>
							</ul></li>
						<li><a href="Shop.jsp">Shop</a></li>
						<li><a href="/Projekt-WEB2/Logout">Logout</a></li>
					</ul>
				</nav>
				<div class="menu-toggle">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</header>
		</c:when>
		<c:otherwise>
			<header>
				<div>
					<a class="logo" href="Start.jsp">Home</a>
				</div>
				<!-- Navigationsleiste -->
				<nav>
					<ul>
						<li class="sub-menu"><a href="Games.jsp">Games</a>
							<ul>
								<li><a href="SnakePreScreen.jsp">Snake</a></li>
								<li><a href="CatchBlockPreScreen.jsp">CatchBlock</a></li>
							</ul></li>
						<li><a href="Login.jsp">Login</a></li>
					</ul>
				</nav>
				<div class="menu-toggle">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</header>
		</c:otherwise>
	</c:choose>