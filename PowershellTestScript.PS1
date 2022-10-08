Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:Github_Workspace"
# Get-Variable PS*
Get-DnsClientCache -ErroAction SilentlyContinue
Test-NetConnection -TraceRoute 8.8.8.8 -ErrorAction SilentlyContinue
"Ausgabe des Inhalts der Readme-Datei des Repository:"
Get-Content Readme.md
