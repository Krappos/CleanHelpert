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

echo 1. Turn off visual effects

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
taskkill /f /im explorer.exe && start explorer.exe

echo changes saved 
::mozno pause uvidíme 
pause
cls

echo 2. Opening disc optimizer
defrag %disc% /O /U /V
pause
cls




