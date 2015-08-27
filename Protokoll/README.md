# Vorlage - Protokoll

Diese Vorlage ist für Protokolle im Rahmen der [Experimentelle Übungen 1][Exp1] des Physik Studiums an der [WWU Münster][WWU].

Für die meisten Studierenden der Physik ist LaTeX noch unbekannt, wenn sie im 3ten Semester ihr erstes Versuchsprotokoll schreiben sollen. Mit dieser Vorlage soll es möglich sein, ohne Vorkenntnisse loszulegen. Hat man LaTeX installiert (Windows: [Video-Anleitung][installWin], Ubuntu: [Wiki von ubuntuusers.de][installUbu]), dann benötigt man noch einen geeigneten Editor. Im Moment kann ich zu [TeXstudio] raten. Die weiteren Schritte sind:

1. [Protokoll.tex] und [Bild.png][Bild] herunterladen (Rechtsklick > Ziel Speichern unter...)
1. Datei mit TeXstudio öffnen
1. `Erstellen & Anzeigen` (grüner Doppelpfeil bzw. [F1]-Taste) ausführen
1. Eine PDF-Datei wird angezeigt (sieht aus wie [Protokoll.pdf])

## Vorlage anpassen

Die Vorlage müsst ihr noch etwas anpassen, bevor ihr mit dem ersten Protokoll anfangen könnt. Hier sind ein paar Hinweise:

* Alle Zeilen, die mit `%` anfangen sind Kommentare. Die meisten könnt ihr Anfangs ignorieren, da ihr ersten ca. 40 Zeilen nicht anpassen müsst. Wollt ihr jedoch wissen, was dort passiert, helfen euch die Kommentare dies zu verstehen.
* Ab `\title{...}` könnt ihr mit der Anpassung beginnen. Befehle beginnen in LaTeX mit einem Backslash (`\`) und enthalten Parameter in geschweiften Klammern (`{` und `}`). Die Befehle `\title`, `\subtitle`, `\author` und `\date` legen fest, was auf der Titelseite angezeigt wird. Der Befehl `\maketitle` erstellt die Titelseite.
* `\tableofcontents` erstellt ein Inhaltsverzeichnis, welches automatisch erzeugt wird.
* Die Gliederung erfolgt mit Hilfe der Befehle `\section`, `\subsection` und `\subsubsection`. Dabei handelt es sich um Überschriften unterschiedlicher Ebenen. Eine Subsection darf natürlich erst nach einer Section benutzt werden, da damit die Section weiter unterteilt wird.
* Neben einfachen Befehlen gibt es auch Umgebungen. Diese starten mit `\begin{...}` und enden mit `\end{...}`. Diese Vorlage enthält die Umgebungen `document` (für den dargestellten Inhalt), `figure`(für Abbildungen), `align` (für Formeln), `quote` (für Zitate) und `thebibliography` (für das Literaturverzeichnis).
 * Für Abbildungen kann man am besten den zugehörigen Assistenten von TeXstudio verwenden (Menüleiste: `Assistenten > Grafik einfügen...`).
 * Formeln kann man sich einfach mit TeXstudio zusammenklicken. Das Menü `Mathe` enthält alle wichtigen Funktionen. Sehr hilfreich finde ich auch die Website [Hilfe:TeX] von Wikipedia.
 * Für das Literaturverzeichnis verweise ich auf [LaTeX/Bibliography Management][bib] bei wikipedia.

## Weiterführende Literatur

Zuerst möchte ich auf meine Vorlage für eine Abschlussarbeit verweisen. Dort habe ich mir die Mühe gemacht, eine 14-seitige Dokumentation zu schreiben. Klickt [hier][Abschluss] um sie euch anzusehen.

### LaTeX-Bücher in der Dante-Edition

[Dante e.V.] ist ein Verein, der sich für die Verbreitung von TeX/LaTeX im deutschsprachigen Raum einsetzt. Von Dante wurden auch mehrere deutschsprachige [Bücher] über LaTeX herausgegeben. Viele der Bücher kann man auch in der [ULB] ausleihen. Eine kleine Übersicht, über diverse LaTeX-Befehle, gibt die [kostenlose LaTeX-Referenz][Referenz].

[Exp1]: https://www.uni-muenster.de/Physik.PI/Institut/Studieren/ExpUeb/Bachelor/exp_ueb_1.html
[WWU]: https://www.uni-muenster.de/Physik
[installWin]: https://www.youtube.com/watch?v=m9LscgrCUAM
[installUbu]: https://wiki.ubuntuusers.de/TeX_Live
[TeXstudio]: http://texstudio.sourceforge.net/
[Protokoll.tex]: https://github.com/m-entrup/LaTeX-Vorlagen/blob/master/Protokoll/Protokoll.tex
[Bild]: https://github.com/m-entrup/LaTeX-Vorlagen/blob/master/Protokoll/Bild.png
[Protokoll.pdf]: https://github.com/m-entrup/LaTeX-Vorlagen/blob/master/Protokoll/Protokoll.pdf
[Hilfe:TeX]: https://de.wikipedia.org/wiki/Hilfe:TeX
[bib]: https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management
[Abschluss]: https://github.com/m-entrup/LaTeX-Vorlagen/blob/master/Abschlussarbeit/00_Abschlussarbeit.pdf
[Dante e.V.]: http://www.dante.de
[Bücher]: http://www.dante.de/index/Literatur.html
[Referenz]: http://www.lehmanns.de/page/latexreferenz
[ULB]: http://disco.uni-muenster.de/primo_library/libweb/action/search.do?srt=date&vl%28freeText0%29=LaTeX&fn=search&vid=ulb
