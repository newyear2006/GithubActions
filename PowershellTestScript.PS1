Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:Github_Workspace"
"akt. Pfad: $(pwd)"
# Get-Variable PS*
If ($PSVersionTable.Platform -eq 'Win32NT') {
  # wird nur auf Windows ausgeführt
  Get-DnsClientCache -ErrorAction SilentlyContinue
  Test-NetConnection -TraceRoute 8.8.8.8 -ErrorAction SilentlyContinue
  Systeminfo
}
If ($PSVersionTable.Platform -eq 'Unix') {
  If ($PSVersionTable.OS -match 'Darwin') {
    # wird nur auf MacOS ausgeführt
    echo "uname -a"
    uname -a
    echo "sw_vers"
    sw_vers
    echo "sysctl -n machdep.cpu.brand_string"
    sysctl -n machdep.cpu.brand_string
    echo "system_profiler SPSoftwareDataType SPHardwareDataType"
    system_profiler SPSoftwareDataType SPHardwareDataType
  } else {
    # wird nur auf Linux ausgeführt
    echo "cat /etc/issue"
    cat /etc/issue
    echo "cat /proc/version"
    cat /proc/version
    echo "uname -a"
    uname -a
    echo "ls /etc/*version /etc/*release /etc/*info"
    ls /etc/*version /etc/*release /etc/*info
    echo "cat /proc/cpuinfo"
    cat /proc/cpuinfo
  }
}
"Ausgabe des Inhalts der Readme-Datei des Repository:"
Get-Content ./README.md  # wichtig für Linux die Groß-/Kleinschreibung!
