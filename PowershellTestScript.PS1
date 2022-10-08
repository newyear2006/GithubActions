Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:Github_Workspace"
"akt. Pfad: $(pwd)"
# Get-Variable PS*
If ($PSVersionTable.Platform -eq 'Windows') {
  # wird nur auf Windows ausgeführt
  Get-DnsClientCache -ErrorAction SilentlyContinue
  Test-NetConnection -TraceRoute 8.8.8.8 -ErrorAction SilentlyContinue
  Systeminfo
}
If ($PSVersionTable.Platform -eq 'Unix') {
  # wird nur auf Linux ausgeführt
}
"Ausgabe des Inhalts der Readme-Datei des Repository:"
Get-Content ./README.md  # wichtig für Linux die Groß-/Kleinschreibung!
