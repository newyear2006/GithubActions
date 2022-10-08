Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:Github_Workspace"
"akt. Pfad: $(pwd)"
# Get-Variable PS*
If ($PSVersionTable.Platform -eq 'Windows') {
  Get-DnsClientCache -ErrorAction SilentlyContinue
  Test-NetConnection -TraceRoute 8.8.8.8 -ErrorAction SilentlyContinue
}
"Ausgabe des Inhalts der Readme-Datei des Repository:"
Get-Content ./Readme.md
