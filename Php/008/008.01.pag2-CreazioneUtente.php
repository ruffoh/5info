<?php
if (!isset($_POST["InvioCredenziali"])) {
?>
	<h2>
    Creazione utente
</h2>
</p>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
    Utente: <input type="text" name="utente"><br>
    Password: <input type="password" name="password"> <br>
    <input type="submit" name ="InvioCredenziali" value="invia POST" />
</form>
</body>
</html>
<?php
} else {    
    if (!isset($_POST["utente"]) || trim($_POST["utente"]) == "") {
        die("Devi inserire un nome utente!");
    } 
    if (!isset($_POST["password"]) || trim($_POST["password"]) == "") {
        die("Devi inserire una password!");
    } 
    $inputUtente = ($_POST["utente"]);
    $inputPass = ($_POST["password"]);
    
    $pwd = sha1($inputPass); // SENZA APICI
    
    $connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
        or die("ERROR: Cannot connect");

    $sql = "SELECT ID_utente FROM utenti WHERE utente = '$inputUtente' ";
    $result = mysqli_query($connection, $sql);
    
    if (!$result) {
        die("Errore nella query: " . mysqli_error($connection));
    }

    if (mysqli_num_rows($result) > 0) {
        echo("<h2>Errore generico nella creazione utente 😭😭</h2>");
        mysqli_free_result($result);
        mysqli_close($connection);
        die;
    }

    $sql = "INSERT INTO `utenti` (`utente`, `password`) VALUES ('$inputUtente', '$pwd');";
    $result = mysqli_query($connection, $sql);
    
    if (!$result) {
        die("Errore nell'inserimento dell'utente: " . mysqli_error($connection));
    }
    echo "Utente inserito con successo.";
    mysqli_close($connection);
}
?>
<?php
	include("../000/000_NavigationMenu.php");
?>
