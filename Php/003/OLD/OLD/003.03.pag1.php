<!doctype HTML>
<html>
	<head>
		<title>Esercizio 003.03 - Pag 1</title>
	</head>
	<body>
		<p>
			<h2>Elenca i files presenti nella cartella corrente (<?PHP echo basename(__DIR__) ?>).</h2>
			<?PHP
				foreach (new DirectoryIterator('.') as $file) {
					if($file->isDot()) continue;
					//echo $file->getFilename() . "<br>";
					echo $file->getFilename();
					if ($file->getFilename() == basename($_SERVER['PHP_SELF']))
					echo "<font color=\"red\"> - SONO IO -</font>";
					echo "<br>";
				}
			?>
		</p>
		<hr>
		
		<form action="" method="post">
			Nome file: <input name="nomeFile" type="text" />
			<input name="submit" type="submit" />
		</form>
		<br>
		
		<?PHP
			if (isset($_POST['submit']) & $_POST['nomeFile'] != "") {
				$nf = $_POST['nomeFile'];
				if ($nf != "") {
					$fileSize = filesize($nf);
					echo "Dimensione file: $fileSize<br>";
					echo "Contenuto del file: $nf<br>";
					echo "<p style=\"background-color:tomato;\">";
					
					foreach(file($nf) as $line) {
						echo "$line<br>";
					}
					
					//$fileContent = file_get_contents($nf);
					//echo "<hr>";
					//echo "<!--";
					//echo "$fileContent";
					//echo "-->";
					//echo "<font color=\"red\">\"$fileContent</font>\"<hr>";
					echo "</p>";
				}
			} else {
				echo "... selezionare un file ...";
			}
		?>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
