<!doctype HTML>
<html>
	<head>
		<title>Esercizio 001.02 - Pag 2</title>
	</head>
	<body>
		<div>
			Questa pagina riceve nel url la variabile $a e la visualizza a schermo.<br><br>
			a = 
			<?php
				echo $_REQUEST['a'];
			?>
		</div>
			<br>
			<?php
				// si usa il "." per concatenare delle stringhe o dei numeri
				echo "a = ".$_REQUEST['a'];
			?>		
		<br>
		<?PHP
			include("../000/000_NavigationMenu.php")
		?>
	</body>
</html>
