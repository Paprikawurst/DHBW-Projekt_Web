 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  			<div class="gameContainer">
  				<a href="CatchBlock.jsp"><img src="images/unknown.png" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> CatchBlock</label>
  			</div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer">
  				<a href="Snake.jsp"><img src="images/Snake/ground.png" alt="Snkae" width="100%" height="100%"/></a>
  				<label class="other"> Snake</label>
  			</div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>	
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>  		
  		<div id="col2row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>  		
  		<div id="col3row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  	</div>
  </div>

  <div id="HighScore-Games" class="tabcontent">
 	   	<div  class="gamesWrapper">
  		<div id="col1row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		
  		<div id="col2row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>  		
  		<div id="col3row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  	</div>
  </div>

  <div id="XXX" class="tabcontent">
	    <div  class="gamesWrapper">
  		<div id="col1row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col1row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col1row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div> 		
  		<div id="col2row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>		
  		<div id="col3row1" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row2" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row3" class=games>
  			<div class="gameContainer">
  				<a href="#"><img src="images/coming.jpg" alt="CatchBlock" width="100%" height="100%"/></a>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  	</div>
  	<script>onLoading()</script> 
  </div>
<jsp:include page="Footer.jsp"/>
</div>
</body>
</html>