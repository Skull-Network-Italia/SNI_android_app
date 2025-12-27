<h1 align='center'>SKULL NETWORK ITALIA APP ANDORID</a></h1>
<p align='center'><a href='https://discord.gg/Jrm2Z26ad3'>Discord Skull Network Italia</a>

# Skull Network Italia App Android

## Panoramica
Applicazione client con interfaccia **dark mode** progettata per interagire con il database del server **Skull Network**.  
Tutte le informazioni sensibili (codici, indirizzi IP, porte, licenze Steam, chiavi API e servizi esterni) sono **mascherate e non esposte lato client**.

---

## Sicurezza e Privacy
- Connessione al backend tramite endpoint protetti (**URL, IP, porte mascherati**).
- Nessuna esposizione di:
  - Licenze Steam
  - Credenziali
  - Token o chiavi di servizi esterni
- Autenticazione Steam gestita tramite flusso sicuro.
- Logging e telemetria separati dal layer di presentazione.

---

## Interfaccia Grafica (UI)
- **Tema:** Dark mode (sfondo scuro, contrasto elevato).
- **Copyright e diritti d’autore:** visibili nel footer.
- **Logo:** Logo Skull posizionato in alto a sinistra.
- **Autenticazione Steam:**
  - In alto a destra pulsante **“Login Steam”**
  - Dopo l’accesso il pulsante cambia in **“Disconnetti”**

---

## Funzionalità da Utente Non Autenticato (Sloggato)
Pannelli sempre visibili:
- **News**
- **Regolamenti**

---

## Sezione Regolamenti
- Apertura di un **menu scrollabile**
- Elenco dei regolamenti:
  - Ogni regolamento è **cliccabile**
  - Visualizzazione dedicata del contenuto selezionato

---

## Homepage
- Descrizione generale del network
- Visualizzazione dei **server disponibili**
  - Stato
  - Nome
  - Informazioni essenziali (dati sensibili mascherati)

---

## Galleria Fotografica
- Sezione dedicata con immagini del server e degli eventi
- Layout responsive
- Visualizzazione ottimizzata per tema scuro

---

## Menu Contestuale (3 Puntini)
Include:
- **Segnalazione Bug**
  - Collegamento diretto a **GitHub**
  - Apertura automatica della sezione issue (repository dedicato)

---

## Segnalazioni Giocatori
- Sezione dedicata alla segnalazione utenti
- Possibilità di:
  - Allegare **foto**
  - Inserire descrizione dettagliata
- Invio sicuro dei dati al backend

---

## Telemetria
- **Collegamento diretto** alla schermata di telemetria
- Visualizzazione dati tecnici e statistici
- Accesso regolato dai permessi utente

---

## Note Tecniche
- Architettura modulare
- Separazione UI / Backend
- Tutti i riferimenti critici sono **offuscati o astratti**
- Applicazione pronta per estensioni future (ruoli, admin panel, moderazione)

---
