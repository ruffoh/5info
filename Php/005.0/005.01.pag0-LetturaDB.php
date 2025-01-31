
<?php
    $connection = mysqli_connect('localhost', 'root', '', '5ait_automobili')
    or die ("ERROR: Cannot connect");
    
    $filecorrente=basename($_SERVER['PHP_SELF']);

	$my_date = date("Y-m-d H:i:s");

    $sql = "insert into log (Data,descrizione,utente,nomePagina) values ('$my_date','Accesso pagina web','Ruffoni Giacomo','$filecorrente')";
    $result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

    mysqli_close($connection);

?>


<!doctype HTML>
<html>
	<head>
		<title>Esercizio 005.01 - Pag 1</title>
	</head>
	<body>
		<p>
			Lettura dati da Database.
		</p>
		<?PHP
			// apertura conessione
			$connection = mysqli_connect('localhost', 'root', '', '5ait_automobili')
			or die ("ERROR: Cannot connect");
			
			// crea ed esegue una query di INSERT
			$my_date = date("Y-m-d H:i:s");

  	 		 $sql = "insert into log (Data,descrizione,utente,nomePagina) values ('$my_date','Accesso pagina web','Ruffoni Giacomo','$filecorrente')";
   			 $result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
			
			// crea ed esegue una query diSELECT
			$sql = "select * from log	";
			$result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

			/* roba del prof

			$sql = " SELECT DATA, NomePagina,ID";
			$sql = $sql."FROM log";
			$sql = $sql." WHERE idMArchio = 4";
			$sql = $sql." ORDER BY ID DESC";
			$sql = $sql." LIMIT 5";
			
			$result = mysqli_query($connection,$sql) 
			or die ("ERROR: ". mysqli_error($connection)."(query was $sql)");
			*/

			
			//verifica le righe restituite
			$TRUNCATE = "TRUNCATE TABLE log ;";
			$contatore = 0;
			if (mysqli_num_rows($result) > 0) {
				$numColumns = mysqli_num_fields($result);
				while ($row = mysqli_fetch_row($result)) {
					if (count($row) == $numColumns) {
						echo implode(" - ", $row);
						echo "<br>";
						$contatore ++;
						if($contatore > 18){
							mysqli_query($connection,$TRUNCATE);
						}
					} else {
						echo "Invalid number of columns in the table!";
					}
				}
			} else {
				echo "No records found!";
			}
			
			// chiude la connessione
			mysqli_close($connection);
		?>
		<br>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
