Test Powershell Github Actions

Tipps:
* Groß-/Kleinschreibung bei Dateinamen beachten!
* immer relative Pfadangaben machen, also .\Datei.xyz anstatt Datei.xyz
* ein Fehler lässt einen Job abbrechen
* $env:GITHUB_WORKSPACE in Powershell steht für $GITHUB_WORKSPACE
* die maximale Laufzeit sind 6 Stunden, dann gibts diese Fehlermeldung: "The job running on runner Hosted Agent has exceeded the maximum execution time of 360 minutes.", weitere Einschränkungen findet man hier: https://docs.github.com/en/actions/learn-github-actions/usage-limits-billing-and-administration#usage-limits
