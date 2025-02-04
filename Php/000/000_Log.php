<?PHP
			// apertura conessione
			$connection = mysqli_connect('localhost', 'root', '', '5ait_automobili')
			or die ("ERROR: Cannot connect");
			
			// crea ed esegue una query di INSERT
			$my_date = date("Y-m-d H:i:s");
			$filecorrente = basename($_SERVER['PHP_SELF']);
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
						$contatore ++;
						if($contatore > 5){
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
