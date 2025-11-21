# Nextcloud High-Performance Backend - Einrichtungsanleitung für Kunden

## 📋 Übersicht

Nach der Bestellung Ihres HPB-Pakets erhalten Sie von uns eine E-Mail mit Ihren Zugangsdaten. Diese Anleitung führt Sie Schritt für Schritt durch die Einrichtung.

**Geschätzte Einrichtungszeit:** 10-15 Minuten

---

## 📧 Was Sie von uns erhalten haben

Nach der Aktivierung (innerhalb von 24 Stunden) erhalten Sie eine E-Mail mit:

```
STUN/TURN Server:
  - Server: ihr-hpb-server.de:5349
  - Secret: abc123def456...
  - Protokolle: turn und turns
  - Transport: udp & tcp

High-Performance Backend (Signaling):
  - URL: https://ihr-hpb-server.de/standalone-signaling
  - Ihr Secret: xyz789abc123...
  - Ihr Paket: Standard (HD 720p, 20 Sessions)

Nextcloud Office (Collabora):
  - URL: https://ihr-hpb-server.de/collabora
```

**Wichtig:** Bewahren Sie diese Daten sicher auf!

---

## 🎯 Teil 1: Nextcloud Talk einrichten (Videokonferenzen)

### Schritt 1: In Nextcloud einloggen

1. Öffnen Sie Ihre Nextcloud-Instanz im Browser
2. Melden Sie sich mit einem **Administrator-Account** an

### Schritt 2: Talk App installieren (falls noch nicht geschehen)

1. Klicken Sie oben rechts auf Ihr **Profilbild**
2. Wählen Sie **Apps**
3. Suchen Sie nach **"Talk"**
4. Klicken Sie auf **Herunterladen und aktivieren**
5. Warten Sie, bis die Installation abgeschlossen ist

### Schritt 3: Talk-Einstellungen öffnen

1. Klicken Sie oben rechts auf Ihr **Profilbild**
2. Wählen Sie **Verwaltungseinstellungen**
3. Scrollen Sie im linken Menü nach unten zu **Talk**

### Schritt 4: STUN/TURN Server konfigurieren

Im Bereich **"STUN-Server"**:

1. Tragen Sie ein: `ihr-hpb-server.de:5349`
   (Ersetzen Sie dies mit Ihrem Server aus der E-Mail)
2. Klicken Sie auf **"Server hinzufügen"** ✚

Im Bereich **"TURN-Server"**:

1. **TURN-Server:** Tragen Sie ein: `ihr-hpb-server.de:5349`
2. **Secret:** Fügen Sie Ihr TURN-Secret aus der E-Mail ein
3. **Protokolle:** Wählen Sie **"turn und turns"**
4. **UDP und TCP:** **Beide Häkchen** setzen ✓
5. Klicken Sie auf **"Server hinzufügen"** ✚

**✓ STUN/TURN Server konfiguriert!**

### Schritt 5: High-Performance Backend einrichten

Im Bereich **"High-Performance Backend"**:

1. Tragen Sie die **Signaling-Server-URL** ein:
   ```
   https://ihr-hpb-server.de/standalone-signaling
   ```

2. Fügen Sie Ihr **Shared Secret** aus der E-Mail ein:
   ```
   xyz789abc123...
   ```

3. Klicken Sie auf **"Einstellungen speichern"** oder scrollen Sie nach unten

4. **Überprüfung:** Es sollte eine grüne Meldung erscheinen:
   ```
   ✓ Signaling-Server ist erreichbar
   ```

**✓ High-Performance Backend konfiguriert!**

---

## 📄 Teil 2: Nextcloud Office einrichten (Dokumentenbearbeitung)

### Schritt 1: Nextcloud Office App installieren

1. Klicken Sie oben rechts auf Ihr **Profilbild**
2. Wählen Sie **Apps**
3. Suchen Sie nach **"Nextcloud Office"** oder **"Collabora"**
4. Klicken Sie auf **Herunterladen und aktivieren**
5. Warten Sie, bis die Installation abgeschlossen ist

### Schritt 2: Office-Einstellungen öffnen

1. Klicken Sie oben rechts auf Ihr **Profilbild**
2. Wählen Sie **Verwaltungseinstellungen**
3. Scrollen Sie im linken Menü zu **Office** oder **Nextcloud Office**

### Schritt 3: Collabora Server konfigurieren

1. Wählen Sie die Option:
   ```
   ⚙ Verwenden Sie einen eigenen Server
   ```

2. Tragen Sie die **Collabora-Server-URL** ein:
   ```
   https://ihr-hpb-server.de/collabora
   ```

3. Klicken Sie auf **"Speichern"**

4. **Überprüfung:** Es sollte erscheinen:
   ```
   ✓ Der Collabora Online-Server ist erreichbar
   ```

**✓ Nextcloud Office konfiguriert!**

---

## ✅ Schritt 3: Funktionstest

### Videokonferenzen testen (Talk)

1. Klicken Sie oben auf das **Talk-Symbol** 💬
2. Erstellen Sie einen neuen **Anruf** oder eine **Unterhaltung**
3. Klicken Sie auf **Video-Anruf starten** 📹
4. Erlauben Sie Browser-Zugriff auf Kamera/Mikrofon
5. **Erfolg:** Sie sollten sich selbst sehen

**Falls Probleme auftreten:**
- Prüfen Sie, ob Ihr Browser HTTPS-Zugriff hat
- Testen Sie mit einem zweiten Nutzer
- Kontaktieren Sie unseren Support

### Office testen

1. Gehen Sie zu **Dateien**
2. Klicken Sie auf **+ Neu**
3. Wählen Sie **Neues Textdokument** oder **Neue Tabelle**
4. Das Dokument sollte sich im Browser öffnen
5. **Erfolg:** Sie können direkt im Browser tippen

**Falls Probleme auftreten:**
- Prüfen Sie die Collabora-URL in den Einstellungen
- Stellen Sie sicher, dass HTTPS aktiviert ist
- Kontaktieren Sie unseren Support

---

## 🔧 Erweiterte Einstellungen (Optional)

### Talk: Weitere Einstellungen

Im Bereich **Talk-Einstellungen** können Sie zusätzlich:

- **Konversationen mit Gästen erlauben:** Aktivieren für öffentliche Meetings
- **Warteraum aktivieren:** Moderator muss Teilnehmer zulassen
- **SIP-Einwahl:** Für Telefon-Teilnahme (zusätzliche Konfiguration nötig)

### Office: Weitere Optionen

- **Vorlagen:** Erstellen Sie Dokumentvorlagen für Ihr Team
- **Schriftarten:** Laden Sie eigene Firmen-Schriftarten hoch
- **Wasserzeichen:** Fügen Sie Wasserzeichen zu PDFs hinzu

---

## 📊 Ihr gebuchtes Paket

Je nach gebuchtem Paket gelten folgende Limits:

### Budget (5-8 €/Monat)
- ✅ Bis zu **10 gleichzeitige Teilnehmer** in Videokonferenzen
- ✅ **SD-Qualität (480p)**
- ✅ Office-Bearbeitung inklusive

### Standard (10-15 €/Monat)
- ✅ Bis zu **20 gleichzeitige Teilnehmer** in Videokonferenzen
- ✅ **HD-Qualität (720p)**
- ✅ Office-Bearbeitung inklusive

### Premium (25-40 €/Monat)
- ✅ Bis zu **40 gleichzeitige Teilnehmer** in Videokonferenzen
- ✅ **Full HD-Qualität (1080p)**
- ✅ Office-Bearbeitung inklusive

### Unlimited (60+ €/Monat)
- ✅ **Unbegrenzte Teilnehmer** in Videokonferenzen
- ✅ **Maximale Qualität**
- ✅ Office-Bearbeitung inklusive
- ✅ Prioritäts-Support

---

## ❓ Häufige Probleme und Lösungen

### Problem: "Signaling-Server nicht erreichbar"

**Lösung:**
1. Prüfen Sie die eingetragene URL (kein Tippfehler?)
2. Stellen Sie sicher, dass Ihre Nextcloud über HTTPS erreichbar ist
3. Prüfen Sie das Secret (alle Zeichen korrekt kopiert?)
4. Warten Sie 2-3 Minuten und laden Sie die Seite neu

### Problem: "Collabora Server nicht erreichbar"

**Lösung:**
1. Prüfen Sie die URL auf Tippfehler
2. Stellen Sie sicher, dass **/collabora** am Ende steht
3. Ihre Nextcloud muss über HTTPS laufen
4. Testen Sie die URL im Browser: `https://ihr-hpb-server.de/collabora`

### Problem: Video/Audio funktioniert nicht

**Lösung:**
1. Erlauben Sie dem Browser Zugriff auf Kamera/Mikrofon
2. Prüfen Sie Ihre Firewall-Einstellungen
3. HTTPS ist zwingend erforderlich (kein HTTP!)
4. Testen Sie mit einem anderen Browser (Chrome, Firefox, Edge)

### Problem: "Teilnehmerlimit erreicht"

**Lösung:**
- Sie haben das Teilnehmerlimit Ihres Pakets erreicht
- Aktuell aktive Nutzer in Calls: Prüfen Sie laufende Gespräche
- **Upgrade:** Kontaktieren Sie uns für ein höheres Paket

### Problem: Schlechte Video-Qualität

**Mögliche Ursachen:**
- Langsame Internetverbindung (min. 2 Mbit/s empfohlen)
- Viele Teilnehmer teilen sich Bandbreite
- Paket-Limit erreicht (Budget = 480p, Standard = 720p)
- **Lösung:** Upgrade auf höheres Paket für bessere Qualität

---

## 📞 Support kontaktieren

Bei weiteren Fragen oder Problemen:

**E-Mail:** support@ihre-firma.de
**Telefon:** +49 123 456789
**Support-Zeiten:** Mo-Fr, 9:00-17:00 Uhr

**Bitte halten Sie folgende Informationen bereit:**
- Ihre Nextcloud-Domain
- Ihr gebuchtes Paket
- Fehlermeldung (Screenshot hilfreich)
- Browser und Version

---

## 🔒 Sicherheitshinweise

1. **Secret sicher aufbewahren:** Teilen Sie Ihr Secret niemals öffentlich
2. **HTTPS erforderlich:** Videokonferenzen funktionieren nur über HTTPS
3. **Admin-Zugang:** Nur Administratoren sollten diese Einstellungen ändern
4. **Regelmäßige Updates:** Halten Sie Ihre Nextcloud aktuell

---

## 📱 Mobile Apps

Talk und Office funktionieren auch in den Nextcloud-Apps:

**iOS:**
- Nextcloud Talk im App Store
- Nextcloud Files im App Store

**Android:**
- Nextcloud Talk im Play Store
- Nextcloud Files im Play Store

In den Apps können Sie ebenfalls an Videokonferenzen teilnehmen und Dokumente bearbeiten!

---

## 🎓 Video-Tutorials

Besuchen Sie unsere Video-Anleitungen:
- **Talk einrichten:** [Link zu YouTube]
- **Office einrichten:** [Link zu YouTube]
- **Meeting erstellen:** [Link zu YouTube]

---

## ✨ Das war's!

Ihre Nextcloud ist jetzt mit professionellen Videokonferenzen und Office-Funktionen ausgestattet.

**Viel Erfolg mit Ihrem neuen High-Performance Backend!**

Bei Fragen stehen wir Ihnen jederzeit zur Verfügung.

---

**Letzte Aktualisierung:** 2025-01-21
**Version:** 1.0
