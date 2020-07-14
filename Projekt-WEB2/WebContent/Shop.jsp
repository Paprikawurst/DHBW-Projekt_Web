<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Test ob eingeloggt, wenn nicht weiterleitung an Login -->
<c:if test="${empty sessionScope['email']}">
	<c:set var="Message" scope="request" value="You are not logged in!" />
	<jsp:forward page="Login.jsp" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<!-- Metadaten  -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8" />
<!-- Titel  -->
<title>Shop</title>
<!-- Skripte  -->
<script src="js/Methods.js" type="text/javascript"></script>
<!-- CSS  -->
<link href="Shop.css" rel="stylesheet" type="text/css">
<!-- Header  -->
<jsp:include page="Header.jsp" />
<!-- Bean festlegen  -->
<jsp:useBean id="shopBean" class="Shop_Skins.Shop_Bean" scope="session" />
<!-- Container Hauptseite unter der Navigation-Leiste  -->
<div id="mainpage">
	<!-- Container Sidebar  -->
	<div class="sidebar">
		<a id="exchange2" onclick="openSide(event, 'exchange')"
			class="tablinks">Exchange</a> <a id="purchases2"
			onclick="openSide(event, 'purchases')" class="tablinks">Purchases</a>
		<a id="change2" onclick="openSide(event, 'change')" class="tablinks">Change
			Skin</a>
	</div>
	<!-- Tab Inhalt Exchange-->
	<div id="exchange" class="tabcontent">
		<h1>Skin preview - scroll down to buy!</h1>
		<!-- Punkteausgabe -->
		<p id="points">
			Welcome
			<!-- JSTL Ausgabe -->
			<c:out value="${sessionScope['email']}" />
			You have
			<!-- JSTL Ausgabe -->
			<c:out value="${shopBean.myPoints(sessionScope['email'])}" />
			points!
		</p>
		<!-- Wrapper Skinanzeige-->
		<div class="skinsWrapper">
			<!-- Zelle1 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/CatchBlock/unknown.png" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Skin</label>
				</div>
			</div>
			<!-- Zelle2 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Coming Soon</label>
				</div>
			</div>
			<!-- Zelle3 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Coming Soon</label>
				</div>
			</div>
			<!-- Zelle4 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Coming Soon</label>
				</div>
			</div>
			<!-- Zelle5 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Coming Soon</label>
				</div>
			</div>
			<!-- Zelle6 -->
			<div class="skins">
				<!-- Container der Skins -->
				<div class="skinContainer">
					<!-- Skin austellen -->
					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%"
						height="100%" /> <label class="other"> Coming Soon</label>
				</div>
			</div>
			<%--			<!-- Zelle7 -->--%>
			<%--			<div  class="skins">--%>
			<%--				<!-- Container der Skins -->--%>
			<%--				<div class="skinContainer">--%>
			<%--					<!-- Skin austellen -->--%>
			<%--					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%" height="100%" />--%>
			<%--					<label class="other"> Coming Soon</label>--%>
			<%--				</div>--%>
			<%--			</div>--%>
			<%--			<!-- Zelle8 -->--%>
			<%--			<div  class="skins">--%>
			<%--				<!-- Container der Skins -->--%>
			<%--				<div class="skinContainer">--%>
			<%--					<!-- Skin austellen -->--%>
			<%--					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%" height="100%" />--%>
			<%--					<label class="other"> Coming Soon</label>--%>
			<%--				</div>--%>
			<%--			</div>--%>
			<%--			<!-- Zelle9 -->--%>
			<%--			<div  class="skins">--%>
			<%--				<!-- Container der Skins -->--%>
			<%--				<div class="skinContainer">--%>
			<%--					<!-- Skin austellen -->--%>
			<%--					<img src="images/JSP_Elemente/coming.jpg" alt="Skin" width="100%" height="100%" />--%>
			<%--					<label class="other"> Coming Soon</label>--%>
			<%--				</div>--%>
			<%--			</div>--%>
		</div>
		<!-- Container Kaufformular Skin -->
		<div id="formContainer">
			<h1>Choose a Skin to buy</h1>
			<h1>
				<span style="color: red"><c:out
						value="${requestScope.MessageShop}" /></span>
			</h1>
			<!-- Kaufformular -->
			<form action="Shop" method="post">
				<select name="unboughtSkins" id="skins">
					<!-- JSTL Schleife mit Auswahlliste -->
					<c:forEach var="entry"
						items="${shopBean.notBoughtSkins(sessionScope['email'])}">
						<option value="${entry}">
							<!-- JSTL Ausgabe -->
							<c:out value="${entry}" /></option>
					</c:forEach>
				</select>
				<!-- Leeres Feld zur Informationsweitergabe ans Servlet -->
				<input name="user" hidden="true" value="${sessionScope['email']}" />
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>
	<!-- Tab Inhalt Purchases-->
	<div id="purchases" class="tabcontent">
		<h1>Purchases:</h1>
		<!-- JSTL IF-ELSE Ausgabe der Käufe -->
		<c:choose>
			<c:when test="${empty shopBean.myPurchases(sessionScope['email'])}">
				<!-- Container Ausgabe Käufe -->
				<div class="print">
					<p>No purchases yet!</p>
				</div>
			</c:when>
			<c:otherwise>
				<div class="print">
					<c:forEach var="entry"
						items="${shopBean.myPurchases(sessionScope['email'])}">
						<c:out value="${entry}" />
						<br>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- Tab Inhalt Change-->
	<div id="change" class="tabcontent">
		<h1>Change Skin:</h1>
		<!-- 		<!-- Container Formular -->
		-->
		<!-- 		<div id="formContainer"> -->
		<!-- 			<h1>Choose a Skin to play with for Snake</h1> -->
		<!-- 			<h1> -->
		<%-- 				<span style="color: red"> <!-- JSTL Ausgabe --> <c:out --%>
		<%-- 						value="${requestScope.MessageSnake}" /></span> --%>
		<!-- 			</h1> -->
		<!-- 			<form action="Skins" method="post"> -->
		<!-- 				<select name="activeSkin" id="skins"> -->
		<!-- 					JSTL Schleife mit Auswahlliste -->
		<%-- 					<c:forEach var="entry" --%>
		<%-- 						items="${shopBean.chooseSkins(sessionScope['email'])}"> --%>
		<%-- 						<option value="${entry}"><c:out value="${entry}" /></option> --%>
		<%-- 					</c:forEach> --%>
		<!-- 				</select> -->
		<!-- 				Leeres Feld zur Informationsweitergabe ans Servlet -->
		<!-- 				<input name="game" hidden="true" value="Snake" /> <input -->
		<%-- 					name="user" hidden="true" value="${sessionScope['email']}" /> <input --%>
		<!-- 					type="submit" value="Submit"> -->
		<!-- 			</form> -->
		<!-- 		</div> -->
		<!-- Container Formular -->
		<div id="formContainer">
			<h1>Choose a Skin to play with for CatchBlock</h1>
			<h1>
				<span style="color: red"> <!-- JSTL Ausgabe --> <c:out
						value="${requestScope.MessageCatchBlock}" />
				</span>
			</h1>
			<form action="Skins" method="post">
				<select name="activeSkin" id="skins">
					<!-- JSTL Schleife mit Auswahlliste -->
					<c:forEach var="entry"
						items="${shopBean.chooseSkins(sessionScope['email'])}">
						<option value="${entry}"><c:out value="${entry}" /></option>
					</c:forEach>
				</select>
				<!-- Leeres Feld zur Informationsweitergabe ans Servlet -->
				<input name="game" hidden="true" value="CatchBlock" /> <input
					name="user" hidden="true" value="${sessionScope['email']}" /> <input
					type="submit" value="Submit">
			</form>
		</div>

	</div>
	<!-- Skript um den ersten Tab zu laden siehe methods.js -->
	<script type="text/javascript">
		onLoading2()
	</script>
</div>
<!-- Footer -->
<jsp:include page="Footer.jsp" />
</body>
</html>