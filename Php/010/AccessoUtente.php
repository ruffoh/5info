<?php
if(!isset($POST['Credenziali'])){

?>
<!DOCTYPE html>
<head>
</head>
<body>
	<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
			Utente: <input type="text" name="utente"><br>
			Password: <input type="password" name="password"><br>
			<input type="submit" name ="Credenziali" value="invia POST" />
		</form>
</body>

<?php
if (!isset($_POST["utente"]) || trim($_POST["utente"]) == ""){
	die ("Devi inserire un nome utente!");
} 
if (!isset($_POST["password"]) || trim($_POST["password"]) == ""){
	die ("Devi inserire una password!");
} 
	
$inputUtente = ($_POST["utente"]);
$inputPass = ($_POST["password"]);
	
$pwd = md5('$inputPass');

$connection = mysqli_connect('localhost', 'root', '', '5ait_bowling');
$sql = "SELECT id FROM user where user = '$inputUtente' AND  password = '$inputPass';";
$result   = mysqli_query($connection,$sql)
	or die("Errore query");
if(mysqli_num_rows($result)>= 0){
	echo "<h2>Benvenuto $inputUtente </h2> <br> <a href = 'ConsegnaAttrezzatura.php' >Consegna Attrezzatura</a>";

}else{
	echo "grande errore";
}
}
?>


