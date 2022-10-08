Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:Github_Workspace"
# Get-Variable PS*
Get-DnsClientCache
"Ausgabe des Inhalts der Readme-Datei des Repository:"
Get-Content Readme.md
