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
			$connection = mysqli_connect('localhost', 'root', '', '5ait_automobili')
			or die ("ERROR: Cannot connect");

			$sql = "SELECT * FROM log";
			$result = mysqli_query($connection, $sql) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");

			// verifica se ci sono righe 
			if (mysqli_num_rows($result) > 0) {
				// crea tabella
				echo "<table border='1'>";
				
				// prende nomi colonne
				$fields = mysqli_fetch_fields($result);
				
				// nomi delle colonne
				echo "<tr>";
				foreach ($fields as $field) {
					echo "<th>" . $field->name . "</th>";
				}
				echo "</tr>";
				
				// Cicla dati nella tabella
				while ($row = mysqli_fetch_row($result)) {
					echo "<tr>";
					foreach ($row as $data) {
						echo "<td>" . $data . "</td>";
					}
					echo "</tr>";
				}
				echo "</table>";
			}
			
			// Riposiziona il puntatore all'inizio per la seconda stampa
			mysqli_data_seek($result, 0);

			// Stampa i dati senza tabella
			if (mysqli_num_rows($result) > 0) {
				while ($row = mysqli_fetch_row($result)) {
					echo implode(" - ", $row) . "<br>";
				}
			}
			
			mysqli_close($connection);
		?>
		<br>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
