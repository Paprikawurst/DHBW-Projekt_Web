<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
	<link href="Design.css" rel="stylesheet" type="text/css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet2" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- Scripte -->
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <div> <a class="logo" href="Menu.php">Home</a></div>
    <!-- Navigationsleiste -->
    <header>
    <nav>
      <ul>
        <li><a href="Account">Anzeigen</a></li>
        <li><a href="PWAnzeigen.php">PWAnzeigen</a></li>
        <li><a href="Aendern.php">Ändern</a></li>
        <li><a href="Eintragen.php">Eintragen</a></li>
        <li><a href="Suchen.php">Suchen</a></li>
        <li><a href="Dir_Anzeigen.php">Directory</a></li>
        <li><a href="Upload.php">Upload</a></li>
        <li><a href="Download.php">Download</a></li>
        <li><a href="Logout.php">Logout</a></li>
      </ul>
    </nav>
    <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
  </header>
  <footer>
		<a href="Impressum.html">Impressum &emsp;</<a>
		<a href="Datenschutzerklärung.html">Datenschutzerklärung</a>
  </footer>
  </body>
  <!-- Script für Login,Register und Icon anklicken -->
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
