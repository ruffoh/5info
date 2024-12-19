# Teoria delle Dipendenze Funzionali e della Normalizzazione

## Dipendenze Funzionali
Una dipendenza funzionale rappresenta una relazione tra attributi di una tabella. In particolare, un attributo A determina un attributo B (A \u2192 B) se, per ogni valore di A, esiste un unico valore di B.

Esempio:
Data la relazione `studenti`:

| Matricola | Nome       | Cognome    |
|-----------|------------|------------|
| 123       | Mario      | Rossi      |
| 124       | Anna       | Bianchi    |

- La **Matricola** determina il **Nome** e il **Cognome**:
  - `Matricola \u2192 Nome`
  - `Matricola \u2192 Cognome`

Se aggiungiamo una colonna "InizialeNome":

| Matricola | Nome       | Cognome    | InizialeNome |
|-----------|------------|------------|--------------|
| 123       | Mario      | Rossi      | M            |
| 124       | Anna       | Bianchi    | A            |

- In questo caso:
  - `Nome \u2192 InizialeNome`
  - `Matricola \u2192 Nome \u2192 InizialeNome`

Una dipendenza è detta **transitiva** se un attributo dipende indirettamente da un altro attraverso un terzo attributo (come nell'esempio precedente).

## Normalizzazione dei Database
La normalizzazione è il processo di organizzazione dei dati per:

1. Ridurre la ridondanza.
2. Evitare anomalie di inserimento, aggiornamento e cancellazione.
3. Garantire coerenza nei dati.

### Anomalie nei Database non Normalizzati
- **Anomalia di inserimento:** Non è possibile aggiungere dati senza dipendenze correlate.
- **Anomalia di aggiornamento:** La modifica di un dato può richiedere più aggiornamenti.
- **Anomalia di cancellazione:** La cancellazione di un dato può comportare la perdita di informazioni utili.

### Forme Normali
Le forme normali sono regole di progettazione che garantiscono la corretta struttura del database.

#### Prima Forma Normale (1NF)
Una tabella è in 1NF se:
1. Ogni colonna contiene valori atomici (non ulteriormente scomponibili).
2. Ogni riga è unica.
3. Ogni colonna ha valori dello stesso tipo.

Esempio di tabella **non in 1NF**:

| Studente | Corsi              |
|----------|--------------------|
| Mario    | Matematica, Fisica |
| Anna     | Chimica            |

Esempio corretto (in 1NF):

| Studente | Corso      |
| -------- | ---------- |
| Mario    | Matematica |
| Mario    | Fisica     |
| Anna     | Chimica    |

#### Seconda Forma Normale (2NF)
Una tabella è in 2NF se:
1. È in 1NF.
2. Ogni attributo non chiave dipende dall'intera chiave primaria (non solo da una parte di essa).

Esempio di tabella **non in 2NF**:

| Studente | Corso       | Professore  |
|----------|-------------|-------------|
| Mario    | Matematica  | Prof. Bianchi |
| Mario    | Fisica      | Prof. Verdi   |

Qui, `Professore` dipende solo dal `Corso` e non dall'intera chiave composta (`Studente, Corso`).

Esempio corretto (in 2NF):
**Tabella Studenti-Corsi:**

| Studente | Corso      |
| -------- | ---------- |
| Mario    | Matematica |
| Mario    | Fisica     |

**Tabella Corsi-Professori:**

| Corso      | Professore    |
| ---------- | ------------- |
| Matematica | Prof. Bianchi |
| Fisica     | Prof. Verdi   |

#### Terza Forma Normale (3NF)
Una tabella è in 3NF se:
1. È in 2NF.
2. Nessun attributo non chiave dipende transitivamente dalla chiave primaria.

Esempio di tabella **non in 3NF**:

| Matricola | Nome  | Dipartimento | Responsabile |
|-----------|-------|--------------|--------------|
| 123       | Mario | Informatica  | Prof. Rossi  |
| 124       | Anna  | Chimica      | Prof. Verdi  |

Qui, `Responsabile` dipende da `Dipartimento`, che a sua volta dipende da `Matricola`.

Esempio corretto (in 3NF):
**Tabella Studenti:**

| Matricola | Nome  | Dipartimento |
|-----------|-------|--------------|
| 123       | Mario | Informatica  |
| 124       | Anna  | Chimica      |

**Tabella Dipartimenti:**

| Dipartimento | Responsabile |
|--------------|--------------|
| Informatica  | Prof. Rossi  |
| Chimica      | Prof. Verdi  |

## Conclusione
La normalizzazione è un passaggio cruciale per progettare database efficienti e privi di anomalie. Seguire le forme normali fino alla 3NF garantisce una struttura solida, ma in alcuni casi si può optare per un livello di normalizzazione inferiore per esigenze specifiche di performance o semplificazione.
