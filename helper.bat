@echo off

set user=%USERNAME%
::akopa
::echo %user% 

::zelená farba
color 02
 
echo 1. turn off visual efects 

::otvorenie efektov
SystemPropertiesPerformance.exe
pause 

cls 

echo 2. opening disc optimizer 

::optimalizácia disku
dfrgui.exe
pause

cls 

echo 3. trash remover 

::vyprázdnenie koša 

::PowerShell -NoProfile -Command "Clear-RecycleBin -Force -Confirm:$false"

echo trash removed 
pause 

cls 

echo 4.transparency mode off 

start ms-settings:personalization-colors

pause

cls

echo 5. Download MalwareBytes 

cd C:\Users\akopa\Downloads
curl -O  https://data-cdn.mbamupdates.com/web/mb5-setup-consumer/MBSetup.exe
cd .. 

echo downloaded .... 

pause 

cls


