Test Powershell Github Actions

Tipps:
* Groß-/Kleinschreibung bei Dateinamen beachten!
* immer relative Pfadangaben machen, also .\Datei.xyz anstatt Datei.xyz
* ein Fehler lässt einen Job abbrechen
* $env:GITHUB_WORKSPACE in Powershell steht für $GITHUB_WORKSPACE
* die maximale Laufzeit sind 6 Stunden, dann gibts diese Fehlermeldung: "The job running on runner Hosted Agent has exceeded the maximum execution time of 360 minutes.", weitere Einschränkungen findet man hier: https://docs.github.com/en/actions/learn-github-actions/usage-limits-billing-and-administration#usage-limits
* man kann mehrere parallele Tests ablaufen lassen indem man eine Matrix einrichtet:
```YML
      strategy:
        matrix:
          VariablenName: ['', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
```
  man verwendet dann
```YML
     env:
          VariablenName: ${{ matrix.VariablenName }}
```
  um beim betreffenden Prozess die Umgebungsvariable VariablenName verfügbar zu machen, hier in Powershell:
```Powershell
$env:VariablenName
```
