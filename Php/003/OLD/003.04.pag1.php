<!doctype HTML>
<html>
	<head>
		<title>Esercizio 004.02 - Pag 1</title>
	</head>
	<body>
		<p>
			<h2>Elenca i files presenti nella cartella corrente in tabella (
			<?PHP echo basename(__DIR__) ?>).</h2>
			<?PHP
				echo "<TABLE border = 1>";
				foreach (new DirectoryIterator('.') as $file) {
					if($file->isDot()) continue;

					echo "<TR><TH>";
					echo $file->getFilename();
					
					// evidenzia il file corrente con la scritta rossa "SONO IO"
					if ($file->getFilename() == basename($_SERVER['PHP_SELF'])) {
						echo "<font color=\"red\"> - SONO IO -</font>";
					}
					
					echo "</TH><TH>gg</TH></TR>";
				}
				echo "</TABLE>";
			?>
		</p>
		<br>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
