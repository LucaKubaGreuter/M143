<h1 style="text-align: center;">Dokumentation Backup M143</h1>

<h2 style="text-align: center;"><img src=Backuplogo.png></h2>

<h2 style="text-align: center;">Luca Greuter <br> TBZ <br> 23.01.2024</h2>

## Inhaltsverzeichnis

- [Betriebskonzept](#betriebskonzept)
    - [Konfiguration des Backup-Systems](#konfiguration-des-backup-systems)
    - [Automatisierung und Planung](#automatisierung-und-planung)
    - [Disaster Recovery Plan](#disaster-recovery-plan)
    - [Dokumentation und Schulung](#dokumentation-und-schulung)
    - [Zusätzliche Überlegungen](#zusätzliche-überlegungen)
- [User Story](#user-story)
    - [Userstory](#userstory)
    - [Akzeptanzkriterien](#akzeptanzkriterien)

## Betriebskonzept

### Konfiguration des Backup-Systems
Hardware und Software:
Primärer Backup-Server: Der ungenutzte Windows-Server wird als Haupt-Backup-Server konfiguriert.
Backup-Software: Auswahl und Installation einer Backup-Software, die mit der Webplattform und den Datenbanken kompatibel ist.

Backup-Strategie:
Vollständige und inkrementelle Backups: Kombination aus vollständigen wöchentlichen Backups und täglichen inkrementellen Backups.

Verschlüsselung: 
Implementierung starker Verschlüsselungsmethoden für gesicherte Daten.

### Automatisierung und Planung
Zeitplanung:
Automatische Ausführung der Backups entsprechend festgelegter Zeitpläne, basierend auf dem Datenvolumen und der Aktualisierungsfrequenz der Webseite.

Überwachung und Berichterstattung:
Einrichtung eines Systems zur Überwachung des Backup-Prozesses mit Benachrichtigungen bei Fehlern oder Unregelmäßigkeiten.
Regelmäßige Berichte zur Überprüfung der Backup-Integrität und -Leistung.

### Disaster Recovery Plan
Entwicklung des Plans:
Detaillierte Beschreibung der Schritte zur Wiederherstellung der Webseite und der Blogs im Falle eines kompletten Systemausfalls.
Festlegung von Prioritäten und Verantwortlichkeiten im Wiederherstellungsprozess.

Regelmäßige Tests und Aktualisierungen:
Durchführung regelmäßiger Tests des Recovery-Plans, um dessen Effektivität sicherzustellen.
Aktualisierung des Plans in Übereinstimmung mit Änderungen in der IT-Infrastruktur oder Betriebsprozessen.

### Dokumentation und Schulung
Dokumentation:
Erstellung einer detaillierten Dokumentation des Backup- und Recovery-Prozesses.
Zugängliche Aufbewahrung der Dokumentation für das Team.

Schulung:
Schulung des Teams in der Handhabung und Überwachung des Backup-Systems.
Regelmäßige Auffrischungskurse und Updates bei neuen Systemänderungen oder -updates.

### Zusätzliche Überlegungen
Datensicherheit und Compliance:
Überprüfung der Backup- und Recovery-Verfahren auf Einhaltung von Datenschutzbestimmungen.
Regelmäßige Sicherheitsaudits des Backup-Systems.

Skalierbarkeit und Flexibilität:
Planung für zukünftiges Wachstum und erhöhte Datenmengen.
Flexibilität zur Anpassung der Backup-Strategie an neue Technologien und Anforderungen.

***

## User Story

### Titel: Sicheres und effizientes Backup-System für eine Blogging-Webseite

### Userstory:

Als Betreiber einer kleinen Blogging-Webseite möchte ich ein robustes Backup-System implementieren, das es ermöglicht, die Blogs und die zugehörige Webseite zuverlässig zu sichern. Dies ist besonders wichtig, da das Risiko von Datenverlust im Internet immer präsent ist. Ich möchte meinen Nutzern garantieren, dass ihre Inhalte sicher sind und auch bei einem Ausfall der Web- und Datenbankserver nicht verloren gehen.

### Akzeptanzkriterien:

Verwendung des vorhandenen Windows-Servers: Da ich einen ungenutzten Windows-Server besitze, möchte ich diesen effektiv als primären Backup-Server nutzen. Dieser soll so konfiguriert werden, dass er tägliche Backups der Webseite und der Datenbanken durchführt.

Automatisierung und Planung: Das Backup-System soll automatisiert werden, um regelmäßige und konsistente Sicherungen ohne manuellen Aufwand zu gewährleisten. Die Backup-Intervalle sollen an das Datenvolumen und die Aktualisierungshäufigkeit der Webseite angepasst werden.

Disaster Recovery Plan: Es soll ein umfassender Disaster Recovery Plan entwickelt werden, der detailliert beschreibt, wie im Falle eines kompletten Systemausfalls die Wiederherstellung der Webseite und der Blogs erfolgt. Dieser Plan soll regelmäßig getestet und aktualisiert werden.

Dokumentation und Schulung: Die gesamte Backup- und Recovery-Prozedur soll dokumentiert werden. Zusätzlich plane ich, mich und mein Team in der Handhabung des Backup-Systems zu schulen, um eine schnelle Reaktion im Notfall zu gewährleisten.