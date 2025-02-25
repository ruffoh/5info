<?php
if (!isset($_POST["InvioCredenziali"])) {
?>
<!DOCTYPE html>
<html lang="it">
    <head>
        
    </head>
    <body>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
            <label for="utente">Utente:</label>
            <input type="text" id="utente" name="utente">
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
            <br>
            <input type="submit" name ="InvioCredenziali" value="invia POST" >
        </form>
    </body>
    <?php
} else{
        if(!isset($_POST["utente"]) || trim($_POST["utente"]) == ""){
            die("Devi inserire un nome utente!");
        }
        if(!isset($_POST["password"]) || trim($_POST["password"]) == ""){
            die("Devi inserire una password!");
        }

        $inputUtente = ($_POST["utente"]);
        $inputPass = ($_POST["password"]);
        
        $pwd = md5($inputPass);
        
        $sql = "SELECT ID_Utente from utenti WHERE utente = '$inputUtente'";
       
        $connection = mysqli_connect('localhost', 'root', '', '5ait_bowling')
            or  die ("ERROR: Cannot connect");
        
         $result = mysqli_query($connection,$sql)
            or die ("Errore di inserimento");
        
        
        if(mysqli_num_rows($result)>=0 ){
            $sql = "INSERT into utenti (utente,pwd) values ('$inputUtente,$pwd);"
            or die ("Errore Database");
            echo '<h2> sei dentro </h2> <br> <a href = "AccessoUtente.php" > accedi</a>';
         } else{
                echo "grande errore";
         }

        }

?>