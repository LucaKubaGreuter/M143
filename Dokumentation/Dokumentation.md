<h1 style="text-align: center;">Dokumentation Backup M143</h1>

<h2 style="text-align: center;"><img src=BackupLogo.png></h2>

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
- [Systemdefinition](#systemdefinition)
- [Systemverwaltung](#systemverwaltung)
- [Ausfallsicherheit](#ausfallsicherheit)
- [Datensicherung](#datensicherung)
- [Anhang](#anhang)
    [Netzwerkplan](#netzwerkplan)

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
Verwaltet und gespeichert wird das Backup auf einem kleinen Server, welcher vom Auftraggeber bereits zur Verfügung gestellt wurde, um Budget zu sparen. Da der Auftraggeber das Backup nachher selber verwalten will und bei kleinen Problemen diese auch selber lösen kann, haben wir uns für eine Windows-Umgebung statt Linux für den Backup-Server entschieden. Der Server ist ausgestattet mit einem 4-Core-Prozessor und 8 GB RAM. Als Speicher der Backups und Scripts haben wir uns für eine kleine 200 GB SATA SSD entschieden, welche man schnell abnehmen und wieder hinzufügen kann, im Falle man den Server austauschen oder verbessern muss. Auf dem Windows Server haben wir dann zwei Ordner eingerichtet, auf einem Werden die Scripte verwaltet und in einem zweiten werden die Backups gespeichert. Der SQL-Server basiert auf Ubuntu, Linux und läuft zusammen mit dem Web-Server in einer AWS Umgebung. Auf dem SQL-Server ist ein normales MySQL installiert, es wurde zudem ein Backup-Benutzer erstellt, welcher ohne Passwort Backups der Datenbank erstellen kann, aber nichts anderes. Um Änderungen durchzuführen, kann der root User benutzt werden, doch wird nicht empfohlen, sondern wir haben noch dazu einen Admin-User erstellt. Später wurde ein MySQL-User hinzugefügt, welcher von einer anderen IP-Adresse auf die Datenbank zugreifen kann, zwar der Web-Server, denn er nimmt immer die aktuellsten Daten von der Datenbank und stellt diese auf der Webseite dar. Benutzt wird dafür ein Web-Server, auf welchem Apache2 und PHP installiert sind, diese werden mit einem YAML beim Aufsetzen in AWS installiert und konfiguriert. Damit aber das ganze sicher ist, verlaufen alle Verbindungen über SSH, beim Ausführen des PHP-Scripts, um die Daten vom SQL-Server darzustellen, aber auch beim Erstellen der Backups und kopieren mithilfe von SCP auf den Backup-Server. Die Backups werden mit dem Task-Scheduler auf dem Backup-Server getriggert. Um für noch zusätzliche Sicherheit in einem Notfall-Szenario zu sorgen, wird eine externe Festplatte an den Backup-Server angehängt auf diesem sich immer die neusten Backups befinden, den SQL-Dump und ein komplettes Backup des Backup-Servers auf einem weiteren Externen Speichermediums, damit im Notfall dieser direkt ersetzt werden kann.

## Organisation

Die verantwortliche Organisation ist ein kleines Unternehmen namens "MyBlogging", welches den Benutzern eine kostenlose Oberfläche bieten will, den Leuten die Möglichkeit zu geben, Blogs zu schreiben und lesen, wo/wann/wie sie wollen. Die kleine Seite wird von drei Personen als Nebenjob betrieben, mit dem Hintergrund "Wir waren schon immer Fans von Blogs und diese Freude wollen wir mit allen Teilen". Die drei Personen teilen ihre Verantwortungen immer auf und wechseln sich immer wieder ab. Wenn jemand nicht vorige Zeit hat, übernehmen die anderen Beiden, aber die rechtliche Verantwortung trägt der Gründer und der eingetragene Besitzer des kleinen Unternehmens. Alle drei machen hauptberuflich einen anderen Job und waren drei Freunde welche sich mal zusammen getan haben, um dieses Unternehmen zu gründen, alle drei sind Lehrer, einer von ihnen hatte sich mal für Web Development interessiert und ist mit der Idee der Webseite gekommen, da sie aber nicht grosse Erfahrung mit Informatik haben wollte sie das Umsetzen des Backups Profis überlassen. Das kleine Unternehmen ist lokalisiert in Uster an der Musterstrasse 22. 

## Allgemeine Anforderungen

Der Server braucht eine Stabile Internet Verbindung damit der die Backups vom AWS holen kann. Zudem die Möglichkeit den Backup-Server 24/7 laufen zu lassen und auch genug Finanzielle mittel die Server auf AWS zu hosten, in diesem Falle währen wir bei AWS ungefähr bei 990USD pro Jahr. Doch wir empfehlen damit zu rechnen, mehrere Webserver zu hosten, im falle die Webseite sehr hohen Demand bekommen wird und sehr viele User diese verwenden wollen, vor allem aus welchem Land, denn nicht immer ist die Performance gleich. Bei der Hardware muss man beim Web-Server mindestens 16GB Ram und 4-Cores Konfiguriert haben, mehr braucht er nicht, denn er nimmt den rest einfach mit dem PHP-Script vom SQL-Server und displayed diese. Beim SQL-Server muss man dagegen eher höhere Rechenleistung einrechnen, vor allem bei den CPU Cores, denn SQL profitiert von vielen und schnellen Cores. Aber man muss auch mit schnellen Memory rechnen, denn wenn immer wieder neue Blogs zur Datenbank hinzugefügt und gelöscht werden profitiert man von schnellen Lese- und Schreibgeschwindigkeiten der Speichermedien. Beim Backup-Server werden keine grosse Anforderungen benötigt, denn er muss nur Scripts ausführen und diese Speicher, dort gehen wir von 8GB RAM und 4-Cores aus. Bei der Software legen wir beim Web- und SQL-Server auf einen Linux basiertes Betriebssystem weil man dort nur Scripts laufen lässt und deshalb kein Userinterface benutzten muss. Zudem ist das auch ein Vorteil, weil es weniger Leistung benötigt und kann deshalb bei den allgemeinen Hardware Anforderungen sparen. Beim Backup-Server sind wir mit Windows gegangen, weil es einfach zu benutzen ist für die Mitarbeiter des Unternehmens. Zudem ist er schon zur Verfügung gestellte Server ein bereits vor installierter Windows-Server, wir mussten ihn nur Updaten und dann war er schon auf dem neusten Stand, wir haben ihn dann nur noch ein bisschen um konfiguriert um Mühen und Kosten sparen. Bei der Software auf dem Backup-Server muss man nicht viel beachten, aber da wir die Backup-Scripte auf beiden Maschinen laufen lassen, also Linux-Instanzen auf AWS und Windows beim Backup-Server, benutzen wir Sell Scripts. Aus dem Grund, dass Shell Scripte einfacher sind auf Windows zum laufen zu bringen als umgekehrt Windows Powershell auf Linux Maschinen. Auch zu beachten, dass man zwar Powershell auf Linux Maschinen installieren kann, jedoch diese dann nicht mit den geplanten Backup-Scripts funktionieren würde falls diese in Powershell geschrieben werden. Deshalb gilt es auch noch Cygwin auf dem Windows-Gerät zu installieren. Mit Cygwin lassen sich Computerprogramme, die üblicherweise unter Linux und Unix laufen, auf Windows portieren. Cygwin ist auch praktisch, um Shell Scripte auf Windows laufen zu lassen, da man nichts anderes benötigt. Ein anderer Weg Shell und Bash auf Windows laufen zu lassen ist über WSL, aber dafür muss man das ganze subsystem installieren, dagegen ist Cygwin eine einfachere Lösung.

## Systemdefinition

| Systeme         | Backup-Server       | Web-Server    | SQL-Server    |
|-----------------|---------------------|---------------|---------------|
| CPU-Core        | 4                   | 4             | 16            |
| RAM             | 8 GB                | 16 GB         | 16 GB         |
| Storage         | 200 GB              | 20 GB         | 120 GB        |
| Einsatzzweck    | Scripts und Backups | Webserver     | Datenbank     |
| Betriebssystem  | Windows Server 2022 | Ubuntu Server | Ubuntu Server |

## Systemverwaltung

Den Zugang zu den Systemen ist Simpel aber einfach, wir verwenden einen SSH key um auf den Backup-Server zu zugreifen, genau wie auf die beiden Server welche in der AWS Cloud laufen. Wir verwenden drei unterschiedliche Private-Keys, einen um von den Systemen auf den Backup-Server zugreifen. Dann hat jeder Betroffene auch noch zwei weitere Private-Keys, einen für den Web-Server und einen für den SQL-Server. Der Backup-Server braucht aber auch Zugriff auf den SQL-Server um von diesem ein Backup erstellen, oder auch einen dump von der Datenbank welche für die Webseite zuständig ist. Für den Backup-Server wurde ein eigener Private-Key bereit gestellt. Bei der Systemaktualisierung beim backup-Server wurde das so eingerichtet, dass die Verantwortlichen immer eine Benachrichtigung bekommen, falls ein Windows Update zur Verfügung steht, dieses wird auch meistens direkt durchgeführt, ausser es ist gerade ein Backup im Gange oder es ist eines kurz vor dem Anfang. Bei den Beiden AWS-Instanzen sieht das anders aus, dort wird ein Termin festgelegt, in diesem Fall ist es am Sonntag zwischen 22:00 und 24:00 damit man genug zeit hat Updates durch zu führen und bei Problemen kann man dann am Montag an einem Arbeitstag die Probleme versuchen zu lösen. Mit der Idee dahinter, dass Menschen während der Arbeit eher unwahrscheinlich einen Blog schreiben oder Lesen und die Wahrscheinlichkeit an den Wochenenden viel grösser ist, da die Menschen in der Freizeit eher einen Blog schreiben würden als während den Arbeitszeiten.

## Ausfallsicherheit

Beim Ausfall des Backups-Server sofort die Abnehmbare Festplatte entfernen und die Verantwortlichen welche für die die Konfiguration des Backup-Servers zuständig waren informieren. Falls der Backup-Server nicht mehr zum laufen gebracht werden kann, soll so schnell wie möglich ein zweiter Backup-Server angeschafft werden. Falls ein neuer Server angeschafft wurde kann dieser mit dem Backup von der einten externen Festplatte restored werden und schnell wieder in Betrieb genommen werden. Anders sieht das aus bei den beiden AWS-Instanzen. Vom Web-Server wird kein Backup erstellt, denn dieser nimmt die Daten von der Datenbank und hat selber nicht ausser dieses Script auf sich. Beim Ausfall oder Überlastung muss sofort auf AWS eine zweite EC2 Instanz mit den genauen Spezifikationen erstellt werden, damit aber alles schon vor installiert ist kann man mit einem einfachen Yaml die Instanz schon vorkonfigurieren.

```yaml
#cloud-config
users:
  - name: ubuntu
    sudo: ALL=(ALL) NOPASSWD:ALL
    groups: users, admin
    home: /home/ubuntu
    shell: /bin/bash
    ssh_pwauth: false
    ssh_authorized_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCSSoUukq3sMUjh/bkne/+XvbXSnKjTM3lhreNIBuSY7jH/EJx3/gWOPamL5ZC9qqV+PuWCvajhiJAZ7HcdyYEVMkSxgXbHH+S40fnITPfb6RBBc0Ej2aWylc6d4eRK4Bz7Gg1U7EAGnyP8K+9rNy3o4r8VD8cwICsmmUqYWe0yDw== aws-key
disable_root: false
package_update: true
packages:
  - curl
  - wget
  - apache2
  - php
  - libapache2-mod-php
  - php-mysqli
  - adminer
runcmd:
  - sudo systemctl restart apache2
  - sudo a2enconf adminer
  - sudo systemctl restart apache2
```

Zudem muss man beachtet, dass wenn man den Den alten Web-Server ersetzt, muss man im AWS die Elastic-IP-Adress der alten Instanz entziehen und der neuen zuordnen. Anders ist das, wenn man einen weiteren Web-Server benötigt, weil um auf die SQL-Datenbank zu zugreifen muss man den Web-Server als User in der Datenbank registrieren und dafür muss man mit einem SQL-Command auf dem SQL-Server die IP des neuen Web-Server angeben.

```sql
CREATE USER 'WebUser'@'44.222.20.187' IDENTIFIED BY 'WebUser1234';
GRANT ALL PRIVILEGES ON test_db.* TO 'WebUser'@'44.222.20.187';
FLUSH PRIVILEGES;
```

Bei einem Ausfall der SQL-Datenbank muss man zuerst wieder die IP-Adresse des alten Servers entziehen und dann eine neue Instanz mit den gleichen Spezifikation erstellen, auch hier können wir uns Arbeit ersparen indem wir mit einem Yaml die ganz vor installation wieder erledigen.

```yaml
#cloud-config 
users:   
  - name: ubuntu     
    sudo: ALL=(ALL) NOPASSWD:ALL     
    groups: users, admin     
    home: /home/ubuntu     
    shell: /bin/bash     
    ssh_pwauth: false 
    ssh_authorized_keys:       
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCSSoUukq3sMUjh/bkne/+XvbXSnKjTM3lhreNIBuSY7jH/EJx3/gWOPamL5ZC9qqV+PuWCvajhiJAZ7HcdyYEVMkSxgXbHH+S40fnITPfb6RBBc0Ej2aWylc6d4eRK4Bz7Gg1U7EAGnyP8K+9rNy3o4r8VD8cwICsmmUqYWe0yDw== aws-key
disable_root: false 
package_update: true 
packages:
  - curl   
  - wget
  - mysql-server

runcmd:
  - systemctl start mysql
  - systemctl enable mysql
```

Aber um die installation zu vervollständigen, muss man diese Konfiguration noch abschliessen.

```bash
sudo mysql_secure_installation
```

Wenn all diese Schritte so befolgt wurden, muss man nur den Restore der Datenbank wieder ausführen, dafür Kopieren wir mit Hilfe von SCP den neusten SQL-Dump auf die AWS-Instanz und dort können wir dann mit diesen Befehlen die Datenbank wiederherstellen.

```bash
mysql> create database test_db;

mysql -u [user_name] –p [test_db] < [backup_file.sql]
```

## Datensicherung

Die Art in welcher die Daten gesichert werden ist einfach. Jeden Tag um 00:00 wird vom Backup-Server ein SQL-dump Script auf dem SQL-Server getriggert und dieses wird dann auch mit dem gleichen Script via SCP vom SQL-Server auf den Backup-Server gespeichert.

```bash
#!/bin/bash

# Linux server SSH connection details
linux_user='ubuntu'
linux_host='34.233.245.79'
linux_key='C:\Users\lucag\Desktop\sql_rsa'
linux_script='/home/ubuntu/backup_script.sh'

# Windows server backup directory
backup_dir='C:\Users\lucag\Desktop\Backup'

# Generate timestamp on the Windows machine
timestamp=$(/bin/date +"%Y-%m-%d_%H-%M")

# Establish SSH connection to the Linux server and execute the backup script
ssh -i "$linux_key" "$linux_user@$linux_host" "bash $linux_script"

# Copy the backup file from Linux to Windows
cd '/cygdrive/c/Users/lucag/Desktop/Backup'
scp -i .././sql_rsa ubuntu@34.233.245.79:/home/ubuntu/backup_file.sql ./Backup_SQL/backup_file_$timestamp.sql

```

In diesem Script wird genau gezeigt mit der Verbindung zum SQL-Server, auf diesem wird dann das 'backup_script.sh' ausgeführt. Dieses Script mach einen aktuellen SQL-dump der Datenbank und löscht ersetzt damit das vorherige, denn der vorherige dump ist auf dem Backup-Server gespeichert. Im SQL-dump sind alle Daten vorhanden von den Leuten welche die Blogs Posten, also Namen, E-Mail, Geburtstag und evt. auch noch Nationalität und Geschlecht. Aber laut dem Schweizer Datenschutzgesetz müssen Datensicherungen wie diese für 10 Jahre aufbewahrt werden.


## Anhang

### Netzwerkplan
<h2 style="text-align: center;"><img src=../Netzwerkplan.png></h2>


<sub style="text-align: center; color: blue;"> Kuba's IT Realisierung<sub>
