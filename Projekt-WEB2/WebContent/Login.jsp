<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<!-- Metadaten -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />
<head>
	<title>Home</title>
	<link href="Login.css" rel="stylesheet" type="text/css">
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
<div class="login-page">
	<div class="form">
		<!-- Registrieren -->
		<form class="register-form" action="Login_Register.php" method="post">
			<input name="username" type="email" placeholder="username" required>
			<input name="password" type="password" placeholder="password" required>
			<p>
				<a>Gebe das aktuelle Datum ein:</a>
				<!-- Aktuelles Datum -->
				<input type="text" name="result" value="" required />
			</p>
			<!-- Captcha -->
			<img src="captcha.php?RELOAD=" alt="Captcha" title="Klicken, um das Captcha neu zu laden" onclick="this.src+=1;document.getElementById('captcha_code').value='';" width=140 height=40 />
			<input type="text" name="captcha_code" id="captcha_code" size=10 />
			<!-- Bot Test -->
			<input type="hidden" name="bot">
			<button>create</button>
			<p class="message">Schon regestriert <a href="#">Log In</a></p>
		</form>
		<!-- Login -->
		<form class="login-form" action="Login_Check.php" method="post">
			<input name="username" type="email" placeholder="Username" required>
			<input name="password" type="password" placeholder="password" required>
			<button>login</button>
			<p class="message">Nicht regestriert? <a href="#">Erstelle einen Account</a></p>
		</form>
	</div>
</div>
</body>
</html>