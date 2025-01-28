
Conversazione aperta. 2 messaggi. 1 messaggio non letto.

Vai ai contenuti
Utilizzo di Posta di Antonio Scarpa con gli screen reader

1 di 997
zipo
Posta in arrivo

Giacomo RUFFONI
Allegati09:07 (1 ora fa)
-- Giacomo Ruffoni 5AIT

Marco NADALON
Allegati
10:54 (0 minuti fa)
a me

DA SCRIVERE DENTRO NAVIGATION:
<?php
    $connection = mysqli_connect('localhost', 'root', '', 'auto')
    or die ("ERROR: Cannot connect");
    
    $filecorrente=basename($_SERVER['PHP_SELF']);

    $sql = "insert into log (descrizione,utente,nomePagina) values ('Accesso pagina web','NADALON Marco','$filecorrente')";
    $result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

    mysqli_close($connection);

?>


Il giorno mar 28 gen 2025 alle ore 09:07 Giacomo RUFFONI <giacomo.ruffoni@antonioscarpa.edu.it> ha scritto:


--
Giacomo Ruffoni 
5AIT
 Un allegato
  •  Scansione eseguita da Gmail
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
			$connection = mysqli_connect('localhost', 'root', '', 'auto')
			or die ("ERROR: Cannot connect");
			
			// crea ed esegue una query di INSERT
			$sql = "insert into log (descrizione,utente,nomePagina) values ('Accesso pagina web','NADALON Marco','005.01.pag0-LetturaDB')";
			$result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
			
			// crea ed esegue una query diSELECT
			$sql = "select * from log	";
			$result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
			
			//verifica le righe restituite
			if (mysqli_num_rows($result) > 0) {
				$numColumns = mysqli_num_fields($result);
				while ($row = mysqli_fetch_row($result)) {
					if (count($row) == $numColumns) {
						echo implode(" - ", $row);
						echo "<br>";
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
