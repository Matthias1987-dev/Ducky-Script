Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "winget.msixbundle"
Add-AppxPackage -Path "winget.msixbundle"
Remove-Item -Path "winget.msixbundle"
winget --version