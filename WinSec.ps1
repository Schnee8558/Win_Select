Write-Host  -ForegroundColor Yellow "Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "================ =================" -ForegroundColor Yellow
Write-Host "==================== =====================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 22h2 | Deutsch | Pro"-ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 20H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "3: I'll select it myself"-ForegroundColor Yellow
Write-Host "4: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage de-de -OSBuild 22H2 -OSEdition Pro -ZTI -SkipPublisherCheck } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 20H2 -OSEdition Enterprise -ZTI } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot
