<?PHP
	if (!isset($_POST["InvioCredenziali"])) {
?>
<!doctype HTML>
<html>
	<head>
		<title>Esercizi 006 - Creazione Utente</title>
	</head>
	<body>
		<h2>
			Creazione utente
		</h2>
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
		
		$pwd = MD5($inputPass);
		
		$connection = mysqli_connect('localhost', 'root', '', 'vacanze')
			or die ("ERROR: Cannot connect");
		$sql = "SELECT ID_utente FROM utenti WHERE utente = '$inputUtente'";
		
		$result = mysqli_query($connection, $sql)
			or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
		
		if (mysqli_num_rows($result) > 0) {
			echo "Nome utente NON  valido, inserimento interrotto !!<BR>";
		} else {
			$sql = "INSERT INTO utenti (utente, password) VALUES ('$inputUtente', '$pwd')";
			$result = mysqli_query($connection, $sql)
				or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
			echo "Utente inserito.<BR>";
		}
		mysqli_close($connection);
	}
?>
<?PHP
	include("../000/000_NavigationMenu.php")
?>