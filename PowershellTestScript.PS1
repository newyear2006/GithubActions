Write-Host "Powershell läuft"
$PSVersionTable
"Der GithubPfad lautet: $env:GITHUB_WORKSPACE"
"akt. Pfad: $(pwd)"
# Get-Variable PS*
If ($PSVersionTable.Platform -eq 'Win32NT') {
  # wird nur auf Windows ausgeführt
  # Get-DnsClientCache -ErrorAction SilentlyContinue
  # Test-NetConnection -TraceRoute 8.8.8.8 -ErrorAction SilentlyContinue
  Get-MpPreference
  Get-MpComputerStatus
  Systeminfo
  <# geht nicht da Powershell 7!
      Add-Type -AssemblyName System.Windows.Forms
        [void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
        [void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Drawing")
      $bounds = [System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea
      $bmp = New-Object Drawing.Bitmap $bounds.width, $bounds.height
      $graphics = [System.Drawing.Graphics]::FromImage($bmp)
      $graphics.CopyFromScreen($bounds.Location.X, $bounds.Location.Y, 0, 0, $bound.Size)
      $bmp.Save('bildschirm.bmp')
      $graphics.Dispose()
      $bmp.Dispose()
  #>
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
"Anlage einer Test-Datei:"
"Hallo Welt" | Set-Content ./Test.txt

