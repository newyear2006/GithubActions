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

Dann wäre da noch das Thema Github Actions Secrets und wo der Unterschied zwischen Environment- und Repository-Secrets liegt: https://stackoverflow.com/questions/65957197/difference-between-githubs-environment-and-repository-secrets, die Anleitung https://docs.github.com/de/actions/how-tos/writing-workflows/choosing-what-your-workflow-does/using-secrets-in-github-actions ist da nicht so eindeutig.
