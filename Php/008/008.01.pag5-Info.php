<?php
    $conn = mysqli_connect("localhost", "root", "", "5ait_vacanze");
    if (!$conn) {
        die("Errore di connessione al database.");
    }

    function getCount($conn, $table) {
        $query = "SELECT COUNT(*) FROM $table";
        $result = mysqli_query($conn, $query);
        return mysqli_fetch_row($result)[0] ?? 0;
    }

    $count_alberghi = getCount($conn, "alberghi");
    $count_utenti = getCount($conn, "utenti");
    $count_prenotazioni = getCount($conn, "prenotazioni");
    $count_biomi = getCount($conn, "biomi");
?>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenotazione</title>
</head>
<body>
    <h2>Info</h2>
    <table border="1">
        <tr><td>Alberghi</td><td><?php echo $count_alberghi; ?></td></tr>
        <tr><td>Utenti</td><td><?php echo $count_utenti; ?></td></tr>
        <tr><td>Prenotazioni</td><td><?php echo $count_prenotazioni; ?></td></tr>
        <tr><td>Biomi</td><td><?php echo $count_biomi; ?></td></tr>
    </table>
</body>
</html>
