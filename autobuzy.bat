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
pause
cls

echo 2. Opening disc optimizer

defrag %disc% /O /U /V
pause
cls

echo 3. Trash remover
:: koš prázdny 
powershell -command "Clear-RecycleBin"
pause
cls

:: Krok 4: Vypni režim transparentnosti
echo 4. Transparency mode off
:: Otvorenie okna pre vypnutie transparentnosti
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe && start explorer.exe

pause
cls

:: Krok 5: Stiahni MalwareBytes
echo 5. Download MalwareBytes

:: Automatické stiahnutie MalwareBytes do Downloads
cd C:\Users\%user%\Downloads
curl -O https://data-cdn.mbamupdates.com/web/mb5-setup-consumer/MBSetup.exe
cd ..
echo Downloaded...
pause
cls

:: Krok 6: Vypnutie GameMode
echo 6. GameMode off
New-Item -Path "HKCU:\Software\Microsoft\GameBar" -Force | Out-Null
New-ItemProperty -Path "HKCU:\Software\Microsoft\GameBar" -Name "AllowAutoGameMode" -Value 0 -PropertyType DWord -Force

pause
cls

::script a aktiváciu windowsu 
echo 8. Windows activation
powershell -Command "irm https://get.activated.win | iex"
pause 
cls 





