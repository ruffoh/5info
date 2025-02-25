<?PHP
	if (!isset($_POST["InvioCredenziali"])) {
?>
<!doctype HTML>
<html>
	<head>
		<title>Esercizi 006 - Eliminazione Utente</title>
	</head>
	<body>
		<H2 style="color:blue;">
			Eliminazione utente
		</H2>
		
		<form method="POST" >
			<label for="utente"> Utente : </label>
			<select id="utente" name="utente" onchange="document.getElementById('selected_text').value=this.options[this.selectedIndex].text">
				 <option value="0">Selezione utente</option>
				 <?PHP
					$connection = mysqli_connect('localhost', 'root', '', 'vacanze')
						or die ("ERROR: Cannot connect");
					$sql = "SELECT ID_utente, utente FROM utenti WHERE utente NOT IN ('RickyReds')";
			
					$result = mysqli_query($connection, $sql)
						or die ("ERROR: " . mysqli_error($connection) . " (query was $sql)");
					
					if (mysqli_num_rows($result) > 0) {
						while ($row = mysqli_fetch_row($result)) {
							echo "<option value="  . $row[0] . ">" . $row[1] . "</option>";
						}
					}
					mysqli_close($connection);
			
					#echo "<BR>" . $sql . "<BR>";
			?>		 
			</select><br> 
			<input type="hidden" name="selected_text" id="selected_text" value="" />
			<input type="submit" name="InvioCredenziali" value="Elimina"/>
		</form>
	</body>
</html>
<?PHP
	} else {
		if (!isset($_POST["selected_text"]) || trim($_POST["selected_text"]) == ""){
			die ("Devi selezionare un nome utente!");
		} 		
		$nomeUtente = ($_POST["selected_text"]);
		echo "Nome: " . $nomeUtente;
		
		$connection = mysqli_connect('localhost', 'root', '', 'vacanze')
			or die ("ERROR: Cannot connect");
		$sql = "DELETE FROM utenti WHERE user = '$nomeUtente'";
		
		#$result = $connection->query($sql)
		$result = mysqli_query($connection, $sql)
			or die ("ERROR: " . mysqlierror($connection) . " (query was $sql)");
		
		
		//var_dump();
		
/*		
		if (mysqli_num_rows($result) > 0) {
			while($row = $result->fetch_assoc()) {
				// itera le righe della tabella
				// controlla che la password salvata su db sia valida.
				#$inputPass = "ppp";
				$hash = password_hash ($inputPass, PASSWORD_DEFAULT);
				
				if ( password_verify ( $inputPass, $row["password"] ) ) {
				#if (password_verify( $inputPass, $hash )) {
					echo "Password corretta.<BR>";
				} else {
					echo "Password inserita: " . $inputPass . "<BR>";
					echo "Password db: " . $row["password"] . "<BR>";
					echo "!!! Password ERRATA !!!<BR>";
				}
				#echo $inputPass . "<BR>";
				#echo $row["password"] . "<BR><BR>";
				// itera i vari campi (colonne) della riga
				foreach ($row as $column=>$value) {
					echo "$column : $value";
					echo "<br>";
				}
			}

			#header("Location: 006.01.pag1-UtenteVerificato.php");
		} else {
			echo "NO<BR>";
		}
*/
		mysqli_close($connection);
	}
?>
<?PHP
	include("../000/000_NavigationMenu.php")
?>