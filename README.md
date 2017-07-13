# Abhängigkeiten
* Eine Latex-Implementierung muss installiert sein
* Das Programm "make" muss installiert sein
* Unter GNU/Linux muss die BASH installiert sein
* Das Programm "zip" muss installiert sein, wenn ein Verteilungsarchiv
  erstellt werden soll.

Die Abhängigkeiten für Windows können mit "win-install.bat" installiert
werden. Führen Sie dazu einfach diese Datei als Administrator aus.

In GNU/Linux können die Abhängigkeiten z.B. unter Debian mit Synaptic
installiert werden (Paketnamen: "make", "texlive").

# Was ist enthalten?
Es werden zwei Vorlagen mitgeliefert:
* Eine Standard-Latex Vorlage, die für alles mögliche verwendet werden
  kann
* Eine Latex Vorlage im IEEE-Standard

# Variablen in dem Makefile
Die folgenden Variablen müssen im Makefile gesetzt werden, bevor die
Latex-Dateien kompiliert werden können. Alle benötigten Variablen sind
bereits darin vorhanden. D.h. es müssen nur die Werte der Variablen
verändert werden!

* PROJECT_NAME - Der Projektname
* PROJECT_VERSION - Die Version des Projekts
* DOC_FILES - Alle .tex Dokumente, die kompiliert werden sollen
  (inkludierte Dokumente müssen/können nicht einzeln kompiliert
  werden)
* BIB_FILES - Alle .bib Dateien, die verwendet werden
* IDX_FILES - Alle .idx Dateien, die verwendet werden
* OTHER_DIST_FILES - Dateien, die zusätzlich in dem
  Distributions-Archiv auch enthalten sein sollen. In jedem Fall dabei
  sind alle verwendeten .tex, .idx. .bib Dateien und das
  Makefile. D.h. also es sollten verwendete Dateien hinzugefügt werden

# Wie verwende ich das Makefile?
* GNU/Linux - Führen Sie die Datei "compile" aus
* Windows - Führen Sie die Datei "win-compile.bat" aus

Es gibt folgende Ziele des Makefiles:
* all (also keine Paramter) - kompiliert alles
* dist - Erstellt ein Verteilungsarchiv (besonders hilfreich, wenn
  mehrere Personen ohne Versionskontrolle auf dem Dokument arbeiten).
* clean - Löscht alle Dateien, die von "all" generiert wurden
* distclean - Löscht alle Dateien, die von "dist" generiert wurden

# Fragen?
Schreiben Sie uns Ihre Fragen an "office@free-your-pc.com".

# Lizenz
* Copyright @ Richard Paul Bäck
* Die Datei "Makefile" steht unter der GPLv3.
* Die Datei "image.png" darf weder verändert werden noch in anmaßenden
  Kontext verwendet werden.
* Aller anderen Dateien können unter der ApacheV2-Lizenz verwendet werden.
