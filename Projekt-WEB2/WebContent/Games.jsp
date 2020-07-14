<!-- JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Metadaten  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"
          charset="utf-8"/>
    <!-- Titel  -->
    <title>Games</title>
    <!-- Skripte  -->
    <script src="js/Methods.js" type="text/javascript"></script>
    <!-- CSS  -->
    <link href="Games.css" rel="stylesheet" type="text/css">
    <!-- Header  -->
    <jsp:include page="Header.jsp"/>
    <!-- Container Hauptseite unter der Navigation-Leiste  -->
    <div id="mainpage">
        <!-- Tab-Leiste  -->
<%--        <div id="tab">--%>
<%--            <button class="tablinks" id="Skillgames2"--%>
<%--                    onclick="openTab(event, 'Skillgames')">Skill games--%>
<%--            </button>--%>
<%--            <button class="tablinks" id="HighScore-Games2"--%>
<%--                    onclick="openTab(event, 'HighScore-Games')">HighScore-Games--%>
<%--            </button>--%>
<%--            <button class="tablinks" id="XXX2" onclick="openTab(event, 'XXX')">XXX</button>--%>
<%--            <!-- Suche -->--%>
<%--            <div id="search">--%>
<%--                <input type="text" id="searchTerm"--%>
<%--                       placeholder="What are you looking for?">--%>
<%--                <button type="submit" id="searchButton">--%>
<%--                    <i class="fa fa-search"></i>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>

            <!-- Wrapper der Spiele -->
<%--            <div class="gamesWrapper">--%>
<%--                <!-- Zelle1 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
                    <div class="box1">
                        <!-- Weiterleitung ans Spiel -->
                        <a href="CatchBlockPreScreen.jsp"><img
                                src="images/CatchBlock/unknown.png" alt="CatchBlock" width="100%"
                                height="100%"/></a> <label class="other"> CatchBlock</label>
                    </div>
                <!-- Zelle2 -->
<%--                <div class="games">--%>
                    <!-- Zellen Inhalt Container -->
                    <div class="box2">
                        <!-- Weiterleitung ans Spiel -->
                        <a href="SnakePreScreen.jsp"><img src="images/Snake/ground.png"
                                                          alt="Snake" width="100%" height="100%"/></a> <label
                            class="other">
                        Snake</label>
                    </div>
                <!-- Zelle3 -->
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <%--			<!-- Zelle4 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
                <%--			<!-- Zelle5 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
                <%--			<!-- Zelle6 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
                <%--			<!-- Zelle7 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
                <%--			<!-- Zelle8 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
                <%--			<!-- Zelle9 -->--%>
                <%--			<div  class="games">--%>
                <%--				<!-- Zellen Inhalt Container -->--%>
                <%--				<div class="gameContainer">--%>
                <%--					<!-- Weiterleitung ans Spiel -->--%>
                <%--					<a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
                <%--						alt="CatchBlock" width="100%" height="100%" /></a> <label--%>
                <%--						class="other"> Coming Soon</label>--%>
                <%--				</div>--%>
                <%--			</div>--%>
<%--            </div>--%>
<%--        <!-- Tab HighScore-Games-->--%>
<%--        <div id="HighScore-Games" class="tabcontent">--%>
<%--            <!-- Wrapper der Spiele -->--%>
<%--            <div class="gamesWrapper">--%>
<%--                <!-- Zelle1 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="CatchBlockPreScreen.jsp"><img--%>
<%--                                src="images/CatchBlock/unknown.png" alt="CatchBlock" width="100%"--%>
<%--                                height="100%"/></a> <label class="other"> CatchBlock</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle2 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="SnakePreScreen.jsp"><img src="images/Snake/ground.png"--%>
<%--                                                          alt="Snake" width="100%" height="100%"/></a> <label--%>
<%--                            class="other">--%>
<%--                        Snake</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle3 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle4 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle5 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle6 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle7 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle8 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle9 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- Tab XXX -->--%>
<%--        <div id="XXX" class="tabcontent">--%>
<%--            <!-- Wrapper der Spiele -->--%>
<%--            <div class="gamesWrapper">--%>
<%--                <!-- Zelle1 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="CatchBlockPreScreen.jsp"><img--%>
<%--                                src="images/CatchBlock/unknown.png" alt="CatchBlock" width="100%"--%>
<%--                                height="100%"/></a> <label class="other"> CatchBlock</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle2 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="SnakePreScreen.jsp"><img src="images/Snake/ground.png"--%>
<%--                                                          alt="Snake" width="100%" height="100%"/></a> <label--%>
<%--                            class="other">--%>
<%--                        Snake</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle3 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle4 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle5 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle6 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle7 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle8 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- Zelle9 -->--%>
<%--                <div class="games">--%>
<%--                    <!-- Zellen Inhalt Container -->--%>
<%--                    <div class="gameContainer">--%>
<%--                        <!-- Weiterleitung ans Spiel -->--%>
<%--                        <a href="#"><img src="images/JSP_Elemente/coming.jpg"--%>
<%--                                         alt="CatchBlock" width="100%" height="100%"/></a> <label--%>
<%--                            class="other"> Coming Soon</label>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Skript um den ersten Tab zu laden siehe methods.js -->--%>
<%--            <script type="text/javascript">--%>
<%--                onLoading()--%>
<%--            </script>--%>
<%--        </div>--%>
 </div>
        <!-- Footer -->       
    <jsp:include page="Footer.jsp"/>
    </body>
</html>