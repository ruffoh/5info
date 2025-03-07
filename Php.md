# Schema dei file PHP per il login e la creazione utente con MySQL

## File: Login.php

### Descrizione
Script PHP che gestisce l'autenticazione di un utente controllando le credenziali nel database MySQL.

### Struttura
1. **Avvio sessione**: Usa `session_start()` per gestire le sessioni.
2. **Form di Login**: Se non sono stati inviati i dati, viene mostrato un form per l'inserimento di username e password.
3. **Validazione input**: Controlla che i campi non siano vuoti.
4. **Connessione al database**: Connessione a MySQL usando `mysqli_connect`.
5. **Verifica credenziali**: Controlla se l'utente esiste nel database.
6. **Gestione sessione**: Se l'utente è valido, salva i dati nella sessione e reindirizza.
7. **Inclusione del menu di navigazione**.

### Codice chiave
```php
session_start(); // Avvio della sessione

$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
    or die ("ERROR: Cannot connect");

$sql = "SELECT ID FROM utenti WHERE user = '$inputUtente' ";
$result = mysqli_query($connection, $sql)
    or die ("ERROR: " . mysqli_error($connection));

if (mysqli_num_rows($result) > 0) {
    $_SESSION['utente'] = $inputUtente; // Salvataggio utente nella sessione
    header("Location: 006.01.pag1-UtenteVerificato.php"); // Reindirizzamento dopo login
} else {
    echo("<h1>Grande errore</h1>");
}

mysqli_close($connection);
```

---

## File: CreazioneUtente.php

### Descrizione
Script PHP che gestisce la registrazione di un nuovo utente nel database MySQL.

### Struttura
1. **Avvio sessione**: Usa `session_start()` per la gestione degli utenti.
2. **Form di Registrazione**: Se i dati non sono stati inviati, viene mostrato un form per l'inserimento di username e password.
3. **Validazione input**: Controlla che i campi non siano vuoti.
4. **Connessione al database**: Connessione a MySQL.
5. **Verifica duplicati**: Controlla se l'utente esiste già nel database.
6. **Registrazione utente**: Se l'utente non esiste, inserisce le credenziali nel database con password crittografata (`sha1`).
7. **Gestione sessione**: Dopo la registrazione, salva l'utente nella sessione.
8. **Messaggi di conferma o errore**.
9. **Inclusione del menu di navigazione**.

### Codice chiave
```php
session_start(); // Avvio della sessione

$pwd = sha1($inputPass); // Hash della password (da migliorare con password_hash())

$connection = mysqli_connect('localhost', 'root', '', '5ait_vacanze')
    or die("ERROR: Cannot connect");

$sql = "SELECT ID FROM utenti WHERE user = '$inputUtente' ";
$result = mysqli_query($connection, $sql);

if (mysqli_num_rows($result) > 0) {
    echo("<h2>Errore: utente già esistente 😭😭</h2>");
} else {
    $sql = "INSERT INTO `utenti` (`user`, `password`) VALUES ('$inputUtente', '$pwd');";
    $result = mysqli_query($connection, $sql);
    if ($result) {
        $_SESSION['utente'] = $inputUtente; // Salvataggio utente nella sessione
        echo "<h2>Utente creato con successo!</h2>";
    } else {
        die("Errore nell'inserimento dell'utente: " . mysqli_error($connection));
    }
}

mysqli_close($connection);
```

---

## Miglioramenti possibili
- **Protezione SQL Injection**: Usare `prepared statements` con `mysqli` o `PDO`.
- **Hash più sicuro**: Usare `password_hash()` invece di `sha1`.
- **Messaggi di errore più chiari**: Fornire feedback più dettagliati all'utente.
- **Miglior gestione della sessione**: Usare `$_SESSION` per mantenere l'accesso dell'utente.

