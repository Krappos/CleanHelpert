@echo off
color 02

set user=%USERNAME%
set disc=%systemdrive%

:: Vitaj správa
echo Hellou in version 1.0
:: Krok 0: Skontroluj výkon
echo 0. Firstly, check your performance
start taskmgr
echo If everything is alright then -> 
pause
cls

::visual effects off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
::1
taskkill /f /im explorer.exe && start explorer.exe

::defragmentacia dusku
defrag %disc% /O

::vymazanie koša insta
powershell -command "Clear-RecycleBin -Force"

::vypnutie transparent modu
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
::2
taskkill /f /im explorer.exe && start explorer.exe

::vypnutie gamemode 
New-Item -Path "HKCU:\Software\Microsoft\GameBar" -Force | Out-Null
New-ItemProperty -Path "HKCU:\Software\Microsoft\GameBar" -Name "AllowAutoGameMode" -Value 0 -PropertyType DWord -Force


::taskkill dam iba na koniec ked sa skončí program 
taskkill /f /im explorer.exe && start explorer.exe