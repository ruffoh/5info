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
			// apertura connessione
			$connection = mysqli_connect('localhost', 'root', '', 'auto')
			or die ("ERROR: Cannot connect");

			// crea ed esegue una query di SELECT
			$sql = "SELECT * FROM marchi";
			$result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

			// verifica se ci sono righe restituite
			if (mysqli_num_rows($result) > 0) {
				// crea la tabella
				echo "<table border='1'>";
				
				// Ottieni i nomi delle colonne
				$fields = mysqli_fetch_fields($result);
				
				// Crea l'intestazione della tabella con i nomi delle colonne
				echo "<tr>";
				foreach ($fields as $field) {
					echo "<th>" . $field->name . "</th>";
				}
				echo "</tr>";
				
				// Cicla attraverso i dati
				while ($row = mysqli_fetch_row($result)) {
					echo "<tr>";
					foreach ($row as $data) {
						echo "<td>" . $data . "</td>";
					}
					echo "</tr>";
				}
				
				// chiudi la tabella
				echo "</table>";
			} else {
				// Se non ci sono risultati, non viene stampata la tabella
				echo "Nessun record trovato!";
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
