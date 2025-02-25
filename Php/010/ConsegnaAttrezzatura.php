<?php
if(!isset($POST['Attrezzatura'])){

?>
<!DOCTYPE html>
<head>
</head>
<body>
	<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
			NumeroPartecipanti: <input type="number" name="Partecipanti"><br>
			Scarpe: <input type= "number" name="Scarpe"><br>
			<input type="submit" name ="Attrezzatura" value="invia POST" />
		</form>
</body>

<?php
if (!isset($_POST["Partecipanti"]) || trim($_POST["Partecipanti"]) == ""){
	die ("Devi inserire un Partecipante");
} 
if (!isset($_POST["Scarpe"]) || trim($_POST["Scarpe"]) == ""){
	die ("Devi inserire una Scarpa");
} 
	
$inputPartecipanti= ($_POST["Partecipanti"]);
$inputScarpe = ($_POST["Scarpe"]);
	

$connection = mysqli_connect('localhost', 'root', '', '5ait_bowling');
$sql = "SELECT FROM utenti where utente = '$inputUtente' AND  pwd = '$inputPass';";
$result   = mysqli_query($connection,$sql)
	or die("Errore query");
if(mysqli_num_rows($result)>= 0){
	echo "<h2>Benvenuto $inputUtente </h2> <br> <a href = 'CosegnaAttrezzatura.php' >Consegna Attrezzatura</a>";

}else{
	echo "grande errore";
}
}
?>


