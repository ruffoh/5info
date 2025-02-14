<?php
if (!isset($_POST["user_id"]) || trim($_POST["user_id"]) == "") {
	die("Devi inserire un ID utente!");
}

$userId = $_POST["user_id"];
$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
	or die("ERROR: Cannot connect");

$sql = "DELETE FROM utenti WHERE id = $userId";
$result = mysqli_query($connection, $sql)
	or die("ERROR: " . mysqli_error($connection) . " (query was $sql)");

if (mysqli_affected_rows($connection) > 0) {
	echo "Utente eliminato con successo!";
} else {
	echo "Nessun utente trovato con l'ID specificato.";
}

mysqli_close($connection);
?>

<!DOCTYPE html>
<body>
	<p><h2>Eliminazione utente</h2></p>	
	<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
		<label for="utente"> Utente : </label>
		<select id="utente" name="utente" onchange="document.getElementById('selected_text').value=this.options[this.selectedIndex].text">
			<option value="0">Selezione utente</option>
			<?php
			$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
				or die("ERROR: Cannot connect");
			$sql = "SELECT ID, user FROM utenti";

			$result = mysqli_query($connection, $sql)
				or die("ERROR: " . mysqli_error($connection) . " (query was $sql)");

			if (mysqli_num_rows($result) > 0) {
				while ($row = mysqli_fetch_row($result)) {
					echo "<option value=" . $row[0] . ">" . $row[1] . "</option>";
				}
			}
			mysqli_close($connection);
			?>
		</select><br>
		<input type="hidden" name="selected_text" id="selected_text" value="" />
		<input type="submit" name="InvioCredenziali" value="Elimina"/>
<?php
} else {
	if (!isset($_POST["selected_text"]) || trim($_POST["selected_text"]) == "") {
		die("Devi selezionare un utente!");
	}
	$nomeUtente = $_POST["selected_text"];
	echo "Nome: " . $nomeUtente;
	$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
		or die("ERROR: Cannot connect");
	$sql = "SELECT `id`, `user` FROM `utenti`";
	$result = mysqli_query($connection, $sql)
		or die("ERROR: " . mysqli_error($connection) . " (query was $sql)");

	if (mysqli_num_rows($result) > 0) {
		while ($row = mysqli_fetch_row($result)) {
			echo "<option value=" . $row[0] . ">" . $row[1] . "</option>";
		}
	}
	mysqli_close($connection);
}
?>
