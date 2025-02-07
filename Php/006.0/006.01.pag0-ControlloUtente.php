<?PHP
	if (!isset($_POST["InvioCredenziali"])) {
?>
<!doctype HTML>
<html>
	<head>
		<title>Esercizi 006 - Verifica Utente</title>
	</head>
	<body>
		<p>
			Verifica utente
		</p>
		<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
			Utente: <input type="text" name="utente"><br>
			Password: <input type="text"   name="password"> <br>
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
		
		$pwd = sha1($inputPass); // SENZA APICI
		
		echo $pwd . "<BR>";
		
		$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
			or die ("ERROR: Cannot connect");
		$sql = "INSERT INTO `utenti` (`ID`, `user`, `password`) VALUES (NULL, $inputUtente','$pwd');";
		
		$result = mysqli_query($connection, $sql)
		or die ("ERROR:generico ");
		
		if (mysqli_num_rows($result) > 0) {
		echo("utente creato");
		}
		mysqli_close($connection);
	}
?>
<?PHP
	include("../000/000_NavigationMenu.php")
?>