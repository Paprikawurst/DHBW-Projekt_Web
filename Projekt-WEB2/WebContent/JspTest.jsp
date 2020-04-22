<%@ page import="java.util.Date" %>

<%--
  Created by IntelliJ IDEA.
  User: Nico
  Date: 22.04.2020
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Startseite</title>
</head>
<body>
Hallo und Willkommen!
<br>
<%=new Date()%>

<form>Username: <input id="1" name="usernameGet"/> </form>
<form method="post"><label for="2">Username:</label> <input id="2" name="usernamePost"/> </form>
<form><label>Username:</label> <input id="3"/> </form>

</body>
</html>
