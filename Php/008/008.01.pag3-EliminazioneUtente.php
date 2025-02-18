<?php
    if(isset($_POST["Fase2"])) {
        $host = '';  

    ?>  


<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminazione Utente</title>
</head>
<body>
    <h2>Eliminazione utente</h2>
    <form method="POST" action="">
        <label for="utente">Utente:</label>
        <select id="utente" name="user_id">
            <option value="">Seleziona un utente</option>
            <?php
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<option value='" . htmlspecialchars($row["id"]) . "'>" . htmlspecialchars($row["user"]) . "</option>";
            }
            ?>
        </select>
        <br>
        <input type="submit" value="Elimina">
    </form>
</body>
</html>

<?php
mysqli_close($connection);
?>
