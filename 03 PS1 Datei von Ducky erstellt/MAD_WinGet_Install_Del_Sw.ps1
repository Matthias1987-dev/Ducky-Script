
# berprfen, ob winget installiert ist
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
Write-Output "winget ist nicht installiert. Installation wird gestartet..."
# Herunterladen der winget Installationsdatei
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "winget.msixbundle"
# Installieren der heruntergeladenen Datei
Add-AppxPackage -Path "winget.msixbundle"
Write-Output "winget wurde erfolgreich installiert."
} else {
Write-Output "winget ist bereits installiert."
}

# Definiere die Liste der Programme
$programme = @(
"Chocolatey"
"TeamViewer"
"Win32 Disk Imager"
"Discord"
"Cura Ultimaker"
"WinRar"
"PuTTy"
"Telegram"
"StikyPassword"
"Raspberry Pi Imager"
"Notepad++"
"Visual Studio Code"
"RealVNC Viewer"
"QFinder Pro"
"Nextcloud"
"TuxGuitar"
"Audacity"
"balenaEtcher"
"Arduino"
"qFlipper"
"FreeCAD"
"Jamulus"
"HWinfo"
"GIT"
"Python 3.13"
"Yubico.Authenticator"
"Windows SUB System for Linux"
)
$paket = @(
"Chocolatey.Chocolatey"
"TeamViewer.TeamViewer"
"Win32diskimager.win32diskimager"
"Discord.Discord"
"Ultimaker.Cura"
"WinRAR"
"PuTTY.PuTTY"
"Telegram.TelegramDesktop"
"LamantineSoftware.StickyPassword"
"RaspberryPiFoundation.RaspberryPiImager"
"Notepad++.Notepad++"
"Microsoft.VisualStudioCode"
"RealVNC.VNCViewer"
"QNAP.QfinderPro"
"Nextcloud.NextcloudDesktop"
"TuxGuitar.TuxGuitar"
"Audacity.Audacity"
"balena.etcher"
"ArduinoSA.IDE.stable"
"FlipperDevicesInc.qFlipper"
"FreeCAD.FreeCAD"
"VolkerFischer.Jamulus"
"REALiX.HWiNFO"
"Git.Git"
"Python.Python.3.13"
"Yubico.Authenticator"
"--id Microsoft.WSL"
)


# Funktion zur berprfung, ob ein Programm installiert ist
function IstProgrammInstalliert($programmName) {
   $installedPrograms = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*,
                                         HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
                        Select-Object DisplayName

    foreach ($installedProgram in $installedPrograms) {
        if ($installedProgram.DisplayName -like "*$programmName*") {
            return $true
        }
    }
    return $false
}
# Iteriere ber die Liste der Programme
foreach ($programm in $programme) {
    if (IstProgrammInstalliert $programm) {
        Write-Host "$programm ist bereits installiert."
        $aktion = Read-Host "Mchten Sie $programm deinstallieren oder berspringen? (deinstallieren/berspringen)"

       if ($aktion -eq "deinstallieren") {
           # Hier den Deinstallationsbefehl fr das Programm einfgen
           Write-Host "Deinstalliere $programm..."
           # Beispiel: Uninstall-Befehl fr das Programm
       } else {
           Write-Host "$programm wird bersprungen."
       }
   } else {
       $aktion = Read-Host "Mchten Sie $programm installieren oder berspringen? (installieren/berspringen)"

        if ($aktion -eq "installieren") {
            # Hier den Installationsbefehl fr das Programm einfgen
            Write-Host "Installiere $programm..."
            # Beispiel: Start-Process -FilePath "Pfad\zum\Installer.exe" -ArgumentList "/S"
        } else {
            Write-Host "$programm wird bersprungen."
        }
    }
}

