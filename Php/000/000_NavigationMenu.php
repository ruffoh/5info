<br><br><br><br>
<hr>
<a href="../" >Clicca qui per tornare alla HOME.</a><br>
<ul>
		<?php
		if (is_dir("../000/"))
		{
			echo "<li><a href=\"../000/\" target=\"\">Esercizi 000 Esercizi 000 [Help HTML]</a></li>";
		}
		if (is_dir("../001/"))
		{
			echo "<li><a href=\"../001/\" target=\"\">Esercizi 001 [Passaggio varibili da pag_1 a pag_2]</a></li>";
		}
		if (is_dir("../002/"))
		{
			echo "<li><a href=\"../002/\" target=\"\">Esercizi 002 [Numeri e stringhe]</a></li>";
		}
		if (is_dir("../003/"))
		{
			echo "<li><a href=\"../003/\" target=\"\">Esercizi 003 [File e Directory]</a></li>";
		}
		if (is_dir("../004/"))
		{
			echo "<li><a href=\"../004/\" target=\"\">Esercizi 004 [...]</a></li>";
		}
		if (is_dir("../005/"))
		{
			echo "<li><a href=\"../005/\" target=\"\">Esercizi 005 [Connesione DB]</a></li>";
		}
		if (is_dir("../006/"))
		{
			echo "<li><a href=\"../006/\" target=\"\">Esercizi 006 [...]</a></li>";
		}
		if (is_dir("../007/"))
		{
			echo "<li><a href=\"../007/\" target=\"\">Esercizi 007 [...]</a></li>";
		}
	?>
</ul>
<br>
<?php
	setlocale(LC_TIME, 'ita');
	$mia_data = strftime("%A, %d %B %Y");
	echo utf8_encode($mia_data) . "<br>";
	
	// echo "Oggi e' il " . date("d-m-Y") . "<br>";
	// echo "Oggi e' " . htmlspecialchars(date("l")) . "<br>";
	
	// date_default_timezone_set("America/New_York");
	// echo "A New York sono le " . date("h:i:sa") . "<br>";
	// date_default_timezone_set("Europe/Rome");
	// echo "Da noi sono le " . date("h:i:sa") . "<br>" . "<br>";
	
	$currentFileName = basename($_SERVER['PHP_SELF']);
	echo "💀 Nome file: $currentFileName <br>";
	/*
	echo "Indirizzo Server: " . basename($_SERVER['SERVER_ADDR']) . "<br>";
	echo "Nome Server: " . basename($_SERVER['SERVER_NAME']) . "<br>";
	echo "Versione Server: " . basename($_SERVER['SERVER_SOFTWARE']) . "<br>";
	echo "Protocollo: " . basename($_SERVER['SERVER_PROTOCOL']) . "<br>";
	echo "Request method: " . basename($_SERVER['REQUEST_METHOD']) . "<br>";
	echo "Request Time: " . basename($_SERVER['REQUEST_TIME']) . "<br>";
	echo "Remote Port: " . basename($_SERVER['REMOTE_PORT']) . "<br>";
	echo "Script URI: " . basename($_SERVER['REQUEST_URI']) . "<br>";
	echo "HTTP_HOST: " . basename($_SERVER['HTTP_HOST']) . "<br>";
	
	*/
	echo "<br><br>";
	echo "<font color=\"gray\">© Ruffoh 2024-" . date("Y") . "</font>";
?>

<?php
    $connection = mysqli_connect('localhost', 'root', '', 'auto')
    or die ("ERROR: Cannot connect");
    
    $filecorrente=basename($_SERVER['PHP_SELF']);

    $sql = "insert into log (descrizione,utente,nomePagina) values ('Accesso pagina web','NADALON Marco','$filecorrente')";
    $result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

    mysqli_close($connection);

?>
