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
	<title>Games</title>  	
  	<link href="Games.css" rel="stylesheet" type="text/css">
  	<jsp:include page="Header.jsp"/>	
<div class="mainpage">
  <div class="tab">
  	<button class="tablinks" id="Skillgames2" onclick="openTab(event, 'Skillgames')">Skill games</button>
  	<button class="tablinks" id="HighScore-Games2" onclick="openTab(event, 'HighScore-Games')">HighScore-Games</button>
  	<button class="tablinks" id="XXX2" onclick="openTab(event, 'XXX')">XXX</button>
	<div class="search">
      <input type="text" class="searchTerm" placeholder="What are you looking for?">
      <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
   </div>
  </div>
  <!-- Tab content -->
  <div id="Skillgames" class="tabcontent">
  	<div  class="gamesWrapper">
  		<div id="col1row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col2row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col3row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  	</div>
  </div>

  <div id="HighScore-Games" class="tabcontent">
 	   	<div  class="gamesWrapper">
  		<div id="col1row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col2row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col3row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  	</div>
  </div>

  <div id="XXX" class="tabcontent">
	    <div  class="gamesWrapper">
  		<div id="col1row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col2row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		
  		<div id="col3row1" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer"></div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer"></div>
  		</div>
  	</div>
  	<script>onLoading()</script> 
  </div>
<jsp:include page="Footer.jsp"/>
</div>
</body>
</html>