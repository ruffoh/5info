<?PHP
	if (!isset($_POST["InvioCredenziali"])) {
?>
<!doctype HTML>
<html>
	<head>
		<title>Esercizi 007 - Accesso Utente</title>
	</head>
	<body>
		<p>
			Accesso utente
		</p>
		<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
			Utente: <input type="text" name="utente"><br>
			Password: <input type="password" name="password"><br>
			<input type="submit" name ="InvioCredenziali" value="invia POST" />
		</form>
	</body>
</html>
<?PHP
	} else {
		if (!isset($_POST["utente"]) || trim($_POST["utente"]) == ""){
			die ("Devi inserire un nome utente!");
		} 
		if (!isset($_POST["password"]) || trim($_POST["password"]) == ""){
			die ("Devi inserire una password!");
		} 
		$inputUtente = ($_POST["utente"]);
		$inputPass = ($_POST["password"]);
		
		$pwd = sha1('$inputPass');
				
		$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
			or die ("ERROR: Cannot connect");
		$sql = "SELECT ID FROM utenti WHERE user = '$inputUtente' ";
		
		$result = mysqli_query($connection, $sql)
		or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
		
		if (mysqli_num_rows($result) > 0) {
			
			header("Location: 007.01.pag1-UtenteVerificato.php");
		}
		else echo("<h1>Grande errore</h1>");
		
		mysqli_close($connection);
	}
?>
<?PHP
	include("../000/000_NavigationMenu.php")
?>