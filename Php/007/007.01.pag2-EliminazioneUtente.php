<?php
$host = 'localhost';
$user = 'root';
$password = '';
$dbname = '5ait_vacanze';

// Connessione al database
$connection = mysqli_connect($host, $user, $password, $dbname);
if (!$connection) {
    die("ERROR: Cannot connect to database.");
}

// Se il form è stato inviato
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!isset($_POST["user_id"]) || trim($_POST["user_id"]) == "") {
        die("Devi selezionare un utente!");
    }

    $userId = intval($_POST["user_id"]); // Assicuriamoci che sia un numero intero

    // Query sicura con prepared statement
    $stmt = mysqli_prepare($connection, "DELETE FROM utenti WHERE id = ?");
    mysqli_stmt_bind_param($stmt, "i", $userId);
    mysqli_stmt_execute($stmt);

    if (mysqli_stmt_affected_rows($stmt) > 0) {
        echo "Utente eliminato con successo!";
    } else {
        echo "Nessun utente trovato con l'ID specificato.";
    }

    mysqli_stmt_close($stmt);
}

// Recupero utenti per il dropdown
$sql = "SELECT id, user FROM utenti";
$result = mysqli_query($connection, $sql);
?>
2
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
