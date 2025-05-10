@echo off

::version 1.0
color 02

:: Nastavenie používateľa a disku
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

:: Krok 1: Vypni vizuálne efekty
echo 1. Turn off visual effects
:: Otvorenie okna pre vizuálne efekty
SystemPropertiesPerformance.exe
pause
cls

:: Krok 2: Otvorenie optimalizácie disku
echo 2. Opening disc optimizer
dfrgui.exe
pause
cls

:: Krok 3: Vyprázdniť kôš
echo 3. Trash remover
:: Otvorí kôš
explorer shell:RecycleBinFolder
pause
cls

:: Krok 4: Vypni režim transparentnosti
echo 4. Transparency mode off
:: Otvorenie okna pre vypnutie transparentnosti
start ms-settings:personalization-colors
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
start ms-settings:gaming-gamemode
pause
cls

:: Krok 7: Nainštalované aplikácie
echo 7. Installed apps
start ms-settings:appsfeatures
pause
cls

::script na aktiváciu windowsu 
echo 8. Windows activation
powershell -Command "irm https://get.activated.win | iex"
pause 
cls 

