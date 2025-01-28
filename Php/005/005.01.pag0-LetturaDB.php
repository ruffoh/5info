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

			// verifica le righe restituite
			if (mysqli_num_rows($result) > 0) {
				// crea la tabella
				echo "<table border='1'>";
				echo "<tr><th>ID</th><th>Nome</th><th>Descrizione</th><th>Altra Colonna</th></tr>";
				
				while ($row = mysqli_fetch_row($result)) {
					echo "<tr>";
					echo "<td>" . $row[0] . "</td>";
					echo "<td>" . $row[1] . "</td>";
					echo "<td>" . $row[2] . "</td>";
					echo "<td>" . $row[3] . "</td>";
					echo "</tr>";
				}
				
				// chiudi la tabella
				echo "</table>";
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
