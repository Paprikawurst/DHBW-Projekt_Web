 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
        Login_Register.Login_RegisterBean log= new Login_Register.Login_RegisterBean();
           boolean eingeloggt=log.loggedIn(session,request,response);
           if(eingeloggt==false) {
               request.setAttribute("Message", "Nicht eingeloggt!");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
           }
   %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
  	<link href="Header.css" rel="stylesheet" type="text/css">
  	<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
  	<!-- Scripte -->
  	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <header>
    <div> <a class="logo" href="Home.jsp">Home</a></div>
    <!-- Navigationsleiste -->
    <nav>
      <ul>
        <li><a href="http://localhost:8083/Projekt-WEB2/Logout">Logout</a></li>
      </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
  </header>
   <div class="footer">
  		<div class="innerFooter">
  		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('.menu-toggle').click(function() {
        $('nav').toggleClass('active')
      })
      $('ul li').click(function() {
        $(this).siblings().removeClass('active');
        $(this).toggleClass('active');
      })
      $('.message a').click(function() {
        $('form').animate({
          height: "toggle",
          opacity: "toggle"
        }, "slow");
      });
    })
  </script>
</body>
</html>