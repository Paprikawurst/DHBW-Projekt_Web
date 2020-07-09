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
  
<jsp:useBean id="shopBean" class="Shop_Skins.Shop_Bean" scope="session"/>
<div class="mainpage">
<div class="sidebar">
  		<a  id="exchange2" onclick="openSide(event, 'exchange')" class="tablinks" >Exchange</a>
  		<a id="purchases2" onclick="openSide(event, 'purchases')" class="tablinks">Purchases</a>
 		<a  id="change2" onclick="openSide(event, 'change')" class="tablinks">Change Skin</a>
</div>

<div id="exchange" class="tabcontent">
<h1>Exchange:</h1>
  	<p id="points">Welcome <c:out value="${sessionScope['email']}"/> You have <c:out value="${shopBean.myPoints(sessionScope['email'])}"/> points!</p>
  	<div  class="skinsWrapper">
  		<div id="col1row1" class=skins>
  			<div class="skinContainer">
  				<img src="images/unknown.png" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Skin</label>
  			</div>
  		</div>
  		<div id="col1row2" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col1row3" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>	
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>  		
  		<div id="col2row1" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row2" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col2row3" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>  		
  		<div id="col3row1" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row2" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  		<div id="col3row3" class=skins>
  			<div class="skinContainer">
  				<img src="images/coming.jpg" alt="Skin" width="100%" height="100%"/>
  				<label class="other"> Coming Soon</label>
  			</div>
  		</div>
  	</div>
  		<div id="formContainer">
  		<h1>Choose a Skin to buy</h1>
  		<span style="color:red"><h1><c:out value="${requestScope.Message}"/></h1></span>
  		<form action="Shop" method="post">
		<select name="unboughtSkins" id="skins">
			<c:forEach var="entry" items="${shopBean.notBoughtSkins(sessionScope['email'])}">
 					 <option value="${entry}"><c:out value="${entry}"/></option>
			</c:forEach>
		</select> 
		<input name="user" hidden="true" value="${sessionScope['email']}"/>
  		<input type="submit" value="Submit">
	</form>
	
  </div>
</div>

  <div id="purchases" class="tabcontent">
 	<h1>Purchases:</h1>  
 		<c:choose>
 		<c:when test="${empty shopBean.myPurchases(sessionScope['email'])}">
 			<div class="print"> 
 				<p>No purchases yet!</p>
 			</div>	
		</c:when>
		<c:otherwise>
			<div class="print"> 
				<c:forEach var="entry" items="${shopBean.myPurchases(sessionScope['email'])}">
 					 <c:out value="${entry}"/><br>
				</c:forEach>
			</div>	
		</c:otherwise>
		</c:choose>
	
  </div>

  <div id="change" class="tabcontent">
  		<div id="formContainer">
  		<h1>Choose a Skin to play with for Snake</h1>
  		<form action="Skins" method="post">
		<select name="activeSkin" id="skins">
			<c:forEach var="entry" items="${shopBean.chooseSkins(sessionScope['email'])}">
 					 <option value="${entry}"><c:out value="${entry}"/></option>
			</c:forEach>
		</select> 
		<input name="game" hidden="true" value="Snake"/>
		<input name="user" hidden="true" value="${sessionScope['email']}"/>
  		<input type="submit" value="Submit">
	</form>	
  </div>  
  
  <div id="formContainer">
  		<h1>Choose a Skin to play with for CatchBlock</h1>
  		<form action="Skins" method="post">
		<select name="activeSkin" id="skins">
			<c:forEach var="entry" items="${shopBean.chooseSkins(sessionScope['email'])}">
 					 <option value="${entry}"><c:out value="${entry}"/></option>
			</c:forEach>
		</select> 
		<input name="game" hidden="true" value="CatchBlock"/>
		<input name="user" hidden="true" value="${sessionScope['email']}"/>
  		<input type="submit" value="Submit">
	</form>	
  </div> 
   	
  </div>
  <script>onLoading2()</script> 
</div>

  
<jsp:include page="Footer.jsp"/>	
</body>
</html>