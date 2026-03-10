# Python-Kurs
Python Kurs für die Cyberweek der Hochschule Esslingen


## Python-Installation

Installieren Sie zunächst Python von https://www.python.org/downloads/

Prüfen Sie zunächst, ob die PATH-Variable richtig ist. 

Führen Sie dazu im __Terminal (Eingabeaufforderung)__ folgende Befehle aus:

```batch
python --version
```

Wenn Python korrekt funktioniert (Version wird angezeigt), installieren Sie im __Terminal (Eingabeaufforderung)__ Juypyter mit dem Befehl:

```batch
pip install notebook jupyterlab
```

Holen Sie von https://github.com/go-hse/python_cyberweek als die Kursdateien als ZIP-Archiv und entpacken Sie die Dateien in einen neuen __Ordner__.

Navigieren Sie im __Terminal (Eingabeaufforderung)__ mit `cd ` in den neuen __Ordner__:

Dann könnnen Sie  - ebenfalls im Terminal - den lokalen Jupyter-Server starten:

```batch
jupyter lab .
```

Falls nach einem Passwort gefragt wird:

```batch
jupyter notebook --generate-config
jupyter notebook password
```

Git: https://git-scm.com/downloads
VS Code: https://code.visualstudio.com/Download


## Google Colab

Colab besteht aus Zellen, die untereinander angeordnet sind.

Jeweils eine Zelle kann markiert werden. 

Die Zellen enthalten entweder Text im Markdown-Format oder Python-Code.

### Tasten-Belegungen

__Navigieren__
- Cursor hoch/runter: Zellen auswählen
- Ctrl-M N Next/Nächste Zeile
- Ctrl-M P Previous/Vorherige Zeile

__Ändern/Editieren__
- Enter: ausgewählte Zelle Editieren

__Ausführen__
- Shift-Enter hervorgehobene Zelle Beenden (Markdown)
- Ctrl-Enter hervorgehobene Zelle Ausführen (Code)

__Zell-Typ Auswählen__
- Ctrl-M Y Code
- Ctrl-M M Markdown

- Ctrl-M L Zeilennummer
- Ctrl-M D Löschen
- Ctrl-M H Tastenkombis
- Ctrl-M A Oben einfügen
- Ctrl-M B Unten einfügen

- 