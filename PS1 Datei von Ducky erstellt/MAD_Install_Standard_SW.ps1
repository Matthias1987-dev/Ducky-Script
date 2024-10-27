
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
Write-Host "Moechten Sie die Software Chocolatey intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Chocolatey.Chocolatey }

Write-Host "Moechten Sie die Software TeamViewer intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install TeamViewer.TeamViewer }

Write-Host "Moechten Sie die Software VM Workstation intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software Win32 Disk Imager intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Win32diskimager.win32diskimager }

Write-Host "Moechten Sie die Software Discord intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Discord.Discord }

Write-Host "Moechten Sie die Software FileZilla intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die FotoSortierer intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software Yamaha THR Remote intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software SD Formatter intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software Zoom Edith intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software Cura Ultimaker intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Ultimaker.Cura }

Write-Host "Moechten Sie die Software Repetier-Host intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software WinRar intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install WinRAR }

Write-Host "Moechten Sie die Software PuTyy intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install PuTTY.PuTTY }

Write-Host "Moechten Sie die Software Telegram intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Telegram.TelegramDesktop }

Write-Host "Moechten Sie die Software StikyPassword intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install LamantineSoftware.StickyPassword }

Write-Host "Moechten Sie die Software Raspberry Pi Imager intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install RaspberryPiFoundation.RaspberryPiImager }

Write-Host "Moechten Sie die Software Notepad++ intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Notepad++.Notepad++ }

Write-Host "Moechten Sie die Software Visual Studio Code intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Microsoft.VisualStudioCode }

Write-Host "Moechten Sie die Software RealVNC Viewer intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install RealVNC.VNCViewer }

Write-Host "Moechten Sie die Software QFinder Pro intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install QNAP.QfinderPro }

Write-Host "Moechten Sie die Software Nextcloud intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Nextcloud.NextcloudDesktop }

Write-Host "Moechten Sie die Software TuxGuitar intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install TuxGuitar.TuxGuitar }

Write-Host "Moechten Sie die Software Audacity intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Audacity.Audacity }

Write-Host "Moechten Sie die Software balenaEtcher intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install balena.etcher }

Write-Host "Moechten Sie die Software ProfiCAD intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software Arduino intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install ArduinoSA.IDE.stable }

Write-Host "Moechten Sie die Software qFlipper intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install FlipperDevicesInc.qFlipper }

Write-Host "Moechten Sie die Software FreeCAD intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install FreeCAD.FreeCAD }

Write-Host "Moechten Sie die Software SweetHome3D intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install eTeks.SweetHome3D --accept-package-agreements --accept-source-agreements }

Write-Host "Moechten Sie die Software Jamulus intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install VolkerFischer.Jamulus }

Write-Host "Moechten Sie die Software HWinfo intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install REALiX.HWiNFO }

Write-Host "Moechten Sie die Software FreeFileSync intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }

Write-Host "Moechten Sie die Software GIT intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Git.Git }

Write-Host "Moechten Sie die Software Python intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Python.Python.3.13 }

Write-Host "Moechten Sie die Software Yubico.Authenticator intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Yubico.Authenticator }
Write-Host "Moechten Sie die Software Office 365 intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install  }
Write-Host "Moechten Sie die Software SUB System for Linux intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install --id Microsoft.WSL }Write-Host "Moechten Sie die Software Visual Studio Code intallieren (J/N)"
$response = Read-Host
if ($response -eq 'J') { winget install Microsoft.VisualStudioCode }
