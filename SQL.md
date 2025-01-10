# Guida all'Utilizzo di SQL

Questa guida spiega come utilizzare SQL, fornendo esempi pratici e una panoramica sui principali comandi delle categorie DQL, DDL e DML.

## Introduzione a SQL
SQL (Structured Query Language) è un linguaggio standard per la gestione e manipolazione di database relazionali. Consente di eseguire operazioni come:

- Creare e modificare tabelle.
- Inserire, aggiornare ed eliminare dati.
- Interrogare i dati per ottenere informazioni utili.

SQL può essere suddiviso in diversi sottolinguaggi, ciascuno progettato per specifici compiti:

- **Data Query Language (DQL):** Lettura o interrogazione dei dati con il comando `SELECT`.
- **Data Manipulation Language (DML):** Aggiunta, modifica o cancellazione dei dati con i comandi `INSERT`, `UPDATE`, `DELETE`, ecc.
- **Data Definition Language (DDL):** Definizione della struttura dei dati con i comandi `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, ecc.
- **Data Control Language (DCL):** Gestione dei permessi con i comandi `GRANT` e `REVOKE`.
- **Transaction Control Language (TCL):** Gestione delle transazioni con i comandi `COMMIT`, `ROLLBACK`, ecc.

## Principali Tipi di Comandi SQL

### DQL (Data Query Language)
DQL viene utilizzato per interrogare i dati nei database. L'unico comando principale è:

- **SELECT:** Recupera dati da una o più tabelle.
  ```sql
  SELECT colonna1, colonna2 FROM tabella WHERE condizione;
  ```
  **Esempio:**
  ```sql
  SELECT nome, età FROM utenti WHERE età > 18;
  ```

### DDL (Data Definition Language)
DDL consente di definire e modificare la struttura del database.

- **CREATE:** Crea nuove tabelle o database.
  ```sql
  CREATE TABLE utenti (
      id INT AUTO_INCREMENT PRIMARY KEY,
      nome VARCHAR(50),
      email VARCHAR(100)
  );
  ```

- **ALTER:** Modifica una tabella esistente.
  ```sql
  ALTER TABLE utenti ADD COLUMN età INT;
  ```

- **DROP:** Elimina tabelle o database.
  ```sql
  DROP TABLE utenti;
  ```

- **TRUNCATE:** Rimuove tutti i record da una tabella, ma mantiene la struttura.
  ```sql
  TRUNCATE TABLE utenti;
  ```

- **RENAME:** Rinomina una tabella.
  ```sql
  RENAME TABLE utenti TO clienti;
  ```

### DML (Data Manipulation Language)
DML viene utilizzato per manipolare i dati all'interno delle tabelle.

- **INSERT:** Aggiunge nuovi record.
  ```sql
  INSERT INTO utenti (nome, email) VALUES ('Mario Rossi', 'mario@example.com');
  ```

- **UPDATE:** Aggiorna record esistenti.
  ```sql
  UPDATE utenti SET email = 'mario.rossi@example.com' WHERE nome = 'Mario Rossi';
  ```

- **DELETE:** Rimuove record esistenti.
  ```sql
  DELETE FROM utenti WHERE nome = 'Mario Rossi';
  ```

## Esercizio Pratico: Gestione di un Database per una Biblioteca 📚

### Scenario
Gestisci un database chiamato `biblioteca` con due tabelle: `libri` e `autori`. La tabella `libri` contiene informazioni sui libri presenti nella biblioteca, mentre la tabella `autori` tiene traccia delle informazioni sugli autori. La struttura delle tabelle è la seguente:

**Tabella `autori`:**

| Colonna     | Tipo        | Descrizione                              |
| ----------- | ----------- | ---------------------------------------- |
| `id_autore` | INT         | Identificativo univoco dell'autore (PK). |
| `nome`      | VARCHAR(50) | Nome dell'autore.                        |
| `cognome`   | VARCHAR(50) | Cognome dell'autore.                     |

**Tabella `libri`:**

| Colonna       | Tipo          | Descrizione                             |
|---------------|---------------|-----------------------------------------|
| `id_libro`    | INT           | Identificativo univoco del libro (PK). |
| `titolo`      | VARCHAR(100)  | Titolo del libro.                      |
| `anno_pub`    | YEAR          | Anno di pubblicazione.                 |
| `genere`      | VARCHAR(30)   | Genere del libro.                      |
| `id_autore`   | INT           | Identificativo dell'autore (FK).       |

### Obiettivi

1. **Creare le Tabelle:**
   ```sql
   CREATE TABLE Autori (
       id_autore INT PRIMARY KEY,
       nome VARCHAR(50) NOT NULL,
       cognome VARCHAR(50) NOT NULL
   );

   CREATE TABLE Libri (
       id_libro INT PRIMARY KEY,
       titolo VARCHAR(100) NOT NULL,
       anno_pub YEAR NOT NULL,
       genere VARCHAR(30) NOT NULL,
       id_autore INT,
       FOREIGN KEY (id_autore) REFERENCES Autori(id_autore)
   );
   ```

2. **Inserire Dati:**
   Aggiungi alcuni autori e libri:
   ```sql
   INSERT INTO Autori (id_autore, nome, cognome) 
   VALUES (1, 'J.R.R.', 'Tolkien'),
          (2, 'George', 'Orwell'),
          (3, 'Jane', 'Austen');

   INSERT INTO Libri (id_libro, titolo, anno_pub, genere, id_autore) 
   VALUES (1, 'Il Signore degli Anelli', 1954, 'Fantasy', 1),
          (2, '1984', 1949, 'Distopia', 2),
          (3, 'Orgoglio e Pregiudizio', 1813, 'Romanzo', 3);
   ```

3. **Aggiornare i Dati:**
   Cambia il genere del libro "1984" in `Fantascienza`:
   ```sql
   UPDATE Libri SET genere = 'Fantascienza' WHERE id_libro = 2;
   ```

4. **Interrogare i Dati:**
   Recupera tutti i libri pubblicati prima del 1900:
   ```sql
   SELECT * FROM Libri WHERE anno_pub < 1900;
   ```

   Raggruppa i libri per genere:
   ```sql
   SELECT genere, COUNT(*) AS numero_libri FROM Libri GROUP BY genere;
   ```

5. **Eliminare un Libro:**
   Rimuovi il libro "1984" dalla tabella:
   ```sql
   DELETE FROM Libri WHERE titolo = '1984';
   ```

6. **Aggiungere una Colonna:**
   Aggiungi una colonna `disponibile` per indicare se il libro è disponibile o meno:
   ```sql
   ALTER TABLE Libri ADD disponibile BOOLEAN DEFAULT TRUE;
   ```


# Join 

### Esempio 

  ```sql
SELECT *
FROM Modelli AS mod
LEFT JOIN 
Marchi AS mar
ON mod.idMarchio = mar.idMarchio
WHERE mod.Modello = 'F40';
   ```
## Query

```SQL 
SELECT * 
FROM modelli 
WHERE idMarchio =(
	SELECT idMarchio
	FROM marchi 
	WHERE Marchio = 'Lamborghini'	
)

```

### Left Join 
```SQL 
SELECT * 
FROM modelli 
LEFT JOIN marchi
ON modelli.idMarchio = marchi.idMarchio
WHERE marchi.Marchio = 'Lamborghini'
ORDER BY Modelli;
```
``

### Modelli

| Modello    | idModello | idMarchio |
| ---------- | --------- | --------- |
| La Ferrari | 1         |           |
| ==Miura==  | ==23==    | ==1==     |
| ==A3==     | ==34==    | ==3==     |
| ==Ritmo==  | ==65==    | ==2==     |
| Clio       | 34        |           |
### Marchi

| idMarchio | Marchio         | **AD**            |
| --------- | --------------- | ----------------- |
| ==1==     | ==Lamborghini== | ==Elettra==       |
| ==2==     | ==Fiat==        | ==Marchione==     |
| ==3==     | ==Audi==        | ==Franz==         |
| 5         | Pagani          | Pagani Horatio    |
| 67        | BMW             | Baus Morales Wolf |
