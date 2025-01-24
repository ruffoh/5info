<!doctype HTML>
<html>
	<HEAD>
	<style>
		table{
            //width: 100%;
            border: 1px solid #100808;
            border-radius: 21px;
            border-color: #2df804;
		}
		

        th,
        td {
            text-align: center;
            border: 1px solid #413434;
            padding: 10px;
            background-color: rgb(181, 216, 181);
            border-radius: 40px;
        }
	</style>
		<TITLE>Esercizio 004.02 - Pag 1</TITLE>
	</HEAD>
	</head>
	<body>
		<p>
			<H2>Elenca i files presenti nella cartella corrente in tabella (<?PHP echo basename(__DIR__) ?>).</H2>
			<?PHP
				function dirSize($directory) {
					$size = 0;
					foreach(new RecursiveIteratorIterator(new RecursiveDirectoryIterator($directory)) as $file){
						$size+=$file->getSize();
					}
					return $size;
				} 
				function GetDirectorySize($path){
					$bytestotal = 0;
					$path = realpath($path);
					if($path!==false && $path!='' && file_exists($path)){
						foreach(new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path, FilesystemIterator::SKIP_DOTS)) as $object){
							$bytestotal += $object->getSize();
						}
					}
					return $bytestotal;
				}
				function human_filesize($bytes, $decimals = 2) {
					$sz = 'BKMGTP';
					$factor = floor((strlen($bytes) - 1) / 3);
					return sprintf("%.{$decimals}f", $bytes / pow(1024, $factor)) . @$sz[$factor];
				}
				
				echo "<TABLE /*border = 1*/>";
				
				// scrive le colonne di intestazione
				ECHO "<TR><TH>Icona</TH><TH>Nome file</TH><TH>Dimensione</TH><TR>";
				
				// per ogni file nella cartella
				foreach (new DirectoryIterator('.') as $file) {
					
					// se non è "." o ".."
					if($file->isDot()) continue;

					//ricava il nome del file e lo appoggia in una variabile
					$fileName = $file->getFilename();

					$ico = "📃";
					// ricava dimensione della cartella o del file
					if (is_dir($fileName)) {
						$ico ="📁";
						$fileSize = GetDirectorySize($fileName);
					} else {
						$fileSize = filesize($fileName);
					}

					//Inizia riga e colonna e scrive il nome del file
					echo "<TR><TH>$ico</TH><TH>$fileName";

					// evidenzia il file corrente con la scritta rossa "SONO IO"
					if ($fileName == basename($_SERVER['PHP_SELF'])) {
						// echo "<font color=\"red\"> - SONO IO -</font>";
						echo "<font color=\"red\"> 💙</font>";
					}

					// scrive dimensione del file
					$g = human_filesize($fileSize);
					echo "</TH><TH>$g</TH></TR>";
				}
				// chiude la tabella
				echo "</TABLE>";
			?>
		</p>
		<br>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
