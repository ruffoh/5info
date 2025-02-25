<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenotazione</title>
</head>
<body>
    <h2>Prenotazione</h2>
    <form method="POST" action="">
        <label for="bioma">Bioma:</label>
        <select id="bioma" name="bioma_id">
            <option value="">Seleziona un bioma</option>
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

            // Recupero biomi per il dropdown
            $sql = "SELECT ID_bioma, bioma FROM biomi";
            $result = mysqli_query($connection, $sql);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<option value='" . htmlspecialchars($row["idBioma"]) . "'>" . htmlspecialchars($row["bioma"]) . "</option>";
            }

            mysqli_close($connection);
            ?>
        </select>
        <br>
        <input type="submit" value="Seleziona">
    </form>
</body>
</html>
