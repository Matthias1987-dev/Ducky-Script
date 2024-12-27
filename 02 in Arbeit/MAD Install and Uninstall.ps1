# MAD Install and Uninstall.ps1

# Function to install winget
function Install-Winget {
    Write-Host "Installing winget..."
    Invoke-WebRequest -Uri "https://aka.ms/getwinget" -OutFile "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
    Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Remove-Item Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
}

# Function to install Chocolatey
function Install-Chocolatey {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Function to install programs using winget
function Install-Programs {
    param (
        [string[]]$programs
    )
    foreach ($program in $programs) {
        Write-Host "Installing $program..."
        winget install $program
    }
}

# Function to uninstall programs using winget
function Uninstall-Programs {
    param (
        [string[]]$programs
    )
    foreach ($program in $programs) {
        Write-Host "Uninstalling $program..."
        winget uninstall $program
    }
}

# List of programs to install or uninstall
$programs = @(
    "Google.Chrome",
    "Mozilla.Firefox",
    "Notepad++",
    "7zip.7zip"
)

# Prompt user for action
$action = Read-Host "Do you want to install or uninstall programs? (install/uninstall)"

# Install winget and Chocolatey
Install-Winget
Install-Chocolatey

# Perform the selected action
if ($action -eq "install") {
    Install-Programs -programs $programs
} elseif ($action -eq "uninstall") {
    Uninstall-Programs -programs $programs
} else {
    Write-Host "Invalid action. Please run the script again and choose 'install' or 'uninstall'."
}