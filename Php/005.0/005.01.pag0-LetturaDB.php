<!doctype html>
<html>
	<head>
		<title>Esercizio 005.01 - Pag 1</title>
	</head>
	<body>
		<p>
			Lettura dati da Database.
		</p>
		<?php
			// apertura connessione
			$connection = mysqli_connect('localhost', 'root', '', 'auto')
			or die ("ERROR: Cannot connect");
			
			// crea ed esegue una query di INSERT
			$sql = "INSERT INTO Marchi (idMarchio, Marchio, CEO_Nome, CEO_Cognome, AnnoFondazione) 
			        VALUES ('52', 'Fiat', 'Olivier', 'François', 1899)";
			
			// esegui la query di INSERT
			if (mysqli_query($connection, $sql)) {
				echo "Nuovo record inserito con successo." . "<BR>" ;
			} else {
				echo "Errore nell'inserimento: " . mysqli_error($connection);
			}
			
			// crea ed esegue una query di SELECT
			$sql_select = "SELECT * FROM Marchi";
			$result = mysqli_query($connection, $sql_select) or die ("ERROR: " . mysqli_error($connection) . " (query was $sql_select)");
			
			// verifica le righe restituite
			if (mysqli_num_rows($result) > 0) {
				while ($row = mysqli_fetch_row($result)) {
					echo $row[0] . " | " . $row[1]. " | " . $row[2] . " | " . $row[3]. " | " . $row[4] . "<br>";
				}
			} else {
				echo "No records found!";
			}
			
			// chiude la connessione
			mysqli_close($connection);
		?>
		<br>
		<?php
			include("../000/000_NavigationMenu.php");
		?>
	</body>
</html>
