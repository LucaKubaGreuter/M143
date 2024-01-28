<h1 style="text-align: center;">Dokumentation Backup M143</h1>

<h2 style="text-align: center;"><img src=Backuplogo.png></h2>

<h2 style="text-align: center;">Luca Greuter <br> TBZ <br> 23.01.2024</h2>

## Inhaltsverzeichnis

- [User Story](#user-story)
    - [Userstory](#userstory)
    - [Akzeptanzkriterien](#akzeptanzkriterien)
- [Betriebskonzept](#betriebskonzept)
    - [Konfiguration des Backup-Systems](#konfiguration-des-backup-systems)
    - [Automatisierung und Planung](#automatisierung-und-planung)
    - [Disaster Recovery Plan](#disaster-recovery-plan)
    - [Dokumentation und Schulung](#dokumentation-und-schulung)
    - [Zusätzliche Überlegungen](#zusätzliche-überlegungen)
- [Zweck des Dokuments](#zweck-der-dokumentation)
- [Einführung](#einführung)
    - [Einführung mit Zielsetzung](#einführung-mit-zielsetzung)
    - [Aufbau und Arbeitsweise der konkreten Umgebung](#aufbau-und-arbeitsweise-der-konkreten-umgebung)
- [Organisation](#organisation)
- [Allgemeine Anforderungen](#allgemeine-anforderungen)

***

## User Story

### Titel: Sicheres und effizientes Backup-System für eine Blogging-Webseite

### Userstory:

Als Betreiber einer kleinen Blogging-Webseite möchte ich ein robustes Backup-System implementieren, das es ermöglicht, die Blogs und die zugehörige Webseite zuverlässig zu sichern. Dies ist besonders wichtig, da das Risiko von Datenverlust im Internet immer präsent ist. Ich möchte meinen Nutzern garantieren, dass ihre Inhalte sicher sind und auch bei einem Ausfall der Web- und Datenbankserver nicht verloren gehen.

### Akzeptanzkriterien:

Verwendung des vorhandenen Windows-Servers: Da ich einen ungenutzten Windows-Server besitze, möchte ich diesen effektiv als primären Backup-Server nutzen. Dieser soll so konfiguriert werden, dass er tägliche Backups der Webseite und der Datenbanken durchführt.

Automatisierung und Planung: Das Backup-System soll automatisiert werden, um regelmäßige und konsistente Sicherungen ohne manuellen Aufwand zu gewährleisten. Die Backup-Intervalle sollen an das Datenvolumen und die Aktualisierungshäufigkeit der Webseite angepasst werden.

Disaster Recovery Plan: Es soll ein umfassender Disaster Recovery Plan entwickelt werden, der detailliert beschreibt, wie im Falle eines kompletten Systemausfalls die Wiederherstellung der Webseite und der Blogs erfolgt. Dieser Plan soll regelmäßig getestet und aktualisiert werden.

Dokumentation und Schulung: Die gesamte Backup- und Recovery-Prozedur soll dokumentiert werden. Zusätzlich plane ich, mich in der Benutzung des Backup-Systems zu schulen, um eine schnelle Reaktion im Notfall zu gewährleisten.

***

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
Zugängliche Aufbewahrung der Dokumentation für den Auftraggeber.

Schulung:
Schulung des Auftraggebers in der Benutzung und Überwachung des Backup-Systems.
Regelmäßige Auffrischungskurse und Updates bei neuen Systemänderungen oder -updates.

### Zusätzliche Überlegungen
Datensicherheit und Compliance:
Überprüfung der Backup- und Recovery-Verfahren auf Einhaltung von Datenschutzbestimmungen.

Skalierbarkeit und Flexibilität:
Planung für zukünftiges Wachstum und erhöhte Datenmengen.
Flexibilität zur Anpassung der Backup-Strategie an neue Technologien und Anforderungen.

***

## Zweck der Dokumentation
Dieses Dokument dient dazu, dem Auftraggeber die genauen Abläufe und Überlegungen während der Umsetzung des Projekts zu verdeutlichen. Damit im Falle von Fragen oder Dingen, die auf den ersten Blick nicht verständlich sind, diese Schritte nachvollziehbar gemacht werden können. Der Auftraggeber wünscht sich einen detaillierten Einblick in die einzelnen Schritte der Backup-Prozedur, damit er diese selbstständig umsetzen kann und keine Hilfe von Externen beantragen möchte. Obwohl wir im Vertrag festgelegt haben, bieten wir dem Auftraggeber 2 Jahre kostenlosen Support im Falle von Problemen oder Fragen. Aber auch falls ähnliche zukünftige Probleme oder Projekte auftreten, diese schneller zu lösen.

## Einführung

### Einführung mit Zielsetzung
Mit dieser Dokumentation will man den ganzen Ablauf der Umsetzung offen legen, aber auch soll es als Anleitung dienen, um dem Besitzer der Webseite die Möglichkeit zu offerieren, das Backup und Restore der beiden Server selbstständig durchzuführen. Gerichtet ist diese Dokumentation an alle Betreiber der Blogging-Webseite, aber auch dem Team, welches das Projekt umgesetzt hat, um im Falle von Fragen dem Auftraggeber helfen zu können.

### Aufbau und Arbeitsweise der konkreten Umgebung
Verwaltet und gespeichert wird das Backup auf einem kleinen Server, welcher vom Auftraggeber bereits zur Verfügung gestellt wurde, um Budget zu sparen. Da der Auftraggeber das Backup nachher selber verwalten will und bei kleinen Problemen diese auch selber lösen kann, haben wir uns für eine Windows-Umgebung statt Linux für den Backup-Server entschieden. Der Server ist ausgestattet mit einem 4-Core-Prozessor und 8 GB RAM. Als Speicher der Backups und Scripts haben wir uns für eine kleine 200 GB SATA SSD entschieden, welche man schnell abnehmen und wieder hinzufügen kann, im Falle man den Server austauschen oder verbessern muss. Auf dem Windows Server haben wir dann zwei Ordner eingerichtet, auf einem Werden die Scripte verwaltet und in einem zweiten werden die Backups gespeichert. Der SQL-Server basiert auf Ubuntu, Linux und läuft zusammen mit dem Web-Server in einer AWS Umgebung. Auf dem SQL-Server ist ein normales MySQL installiert, es wurde zudem ein Backup-Benutzer erstellt, welcher ohne Passwort Backups der Datenbank erstellen kann, aber nichts anderes. Um Änderungen durchzuführen, kann der root User benutzt werden, doch wird nicht empfohlen, sondern wir haben noch dazu einen Admin-User erstellt. Später wurde ein MySQL-User hinzugefügt, welcher von einer anderen IP-Adresse auf die Datenbank zugreifen kann, zwar der Web-Server, denn er nimmt immer die aktuellsten Daten von der Datenbank und stellt diese auf der Webseite dar. Benutzt wird dafür ein Web-Server, auf welchem Apache2 und PHP installiert sind, diese werden mit einem YAML beim Aufsetzen in AWS installiert und konfiguriert. Damit aber das ganze sicher ist, verlaufen alle Verbindungen über SSH, beim Ausführen des PHP-Scripts, um die Daten vom SQL-Server darzustellen, aber auch beim Erstellen der Backups und kopieren mithilfe von SCP auf den Backup-Server. Die Backups werden mit dem Task-Scheduler auf dem Backup-Server getriggert.

## Organisation

Die verantwortliche Organisation ist ein kleines Unternehmen namens "MyBlogging", welches den Benutzern eine kostenlose Oberfläche bieten will, den Leuten die Möglichkeit zu geben, Blogs zu schreiben und lesen, wo/wann/wie sie wollen. Die kleine Seite wird von drei Personen als Nebenjob betrieben, mit dem Hintergrund "Wir waren schon immer Fans von Blogs und diese Freude wollen wir mit allen Teilen". Die drei Personen teilen ihre Verantwortungen immer auf und wechseln sich immer wieder ab. Wenn jemand nicht vorige Zeit hat, übernehmen die anderen Beiden, aber die rechtliche Verantwortung trägt der Gründer und der eingetragene Besitzer des kleinen Unternehmens. Alle drei machen hauptberuflich einen anderen Job und waren drei Freunde welche sich mal zusammen getan haben, um dieses Unternehmen zu gründen, alle drei sind Lehrer, einer von ihnen hatte sich mal für Web Development interessiert und ist mit der Idee der Webseite gekommen, da sie aber nicht grosse Erfahrung mit Informatik haben wollte sie das Umsetzen des Backups Profis überlassen. Das kleine Unternehmen ist lokalisiert in Uster an der Musterstrasse 22. 

## Allgemeine Anforderungen

Der Server braucht eine Stabile Internet Verbindung damit der die Backups vom AWS holen kann. Zudem die Möglichkeit den Backup-Server 24/7 laufen zu lassen und auch genug Finanzielle mittel die Server auf AWS zu hosten, in diesem Falle währen wir bei AWS ungefähr bei 990USD pro Jahr. Doch wir empfehlen damit zu rechnen, mehrere Webserver zu hosten, im falle die Webseite sehr hohen Demand bekommen wird und sehr viele User diese verwenden wollen, vor allem aus welchem Land, denn nicht immer ist die Performance gleich. 