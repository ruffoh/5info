SELECT p.ID_prenotazione, u.utente, a.albergo, c.camera, c.numero AS numeroCamera, c.numeroPosti AS cameraNumeroPosti
FROM prenotazioni AS p
LEFT JOIN utenti AS u ON p.ID_utente = u.ID_utente
LEFT JOIN alberghi AS a ON p.ID_albergo = a.ID_Albergo
LEFT JOIN camere AS c ON p.ID_camera = c.ID_camera AND p.ID_albergo = c.ID_albergo
WHERE p.ID_prenotazione = (
    SELECT ID_prenotazione
    FROM prenotazioni
    WHERE ID_utente = 1
    ORDER BY ID_prenotazione DESC
    LIMIT 1
)