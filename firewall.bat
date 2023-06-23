@echo off

setlocal EnableDelayedExpansion

set "url=https://feodotracker.abuse.ch/downloads/ipblocklist.csv"
set "file=file.csv"

curl -o %file% %url%

netsh advfirewall firewall delete rule name="BadIP"

set /a count=0
for /f "skip=9 tokens=2 delims=," %%a in (%file%) do (
    set /a count+=1
)

set /a i=0
for /f "skip=9 tokens=2 delims=," %%a in (%file%) do (
    set /a i+=1
    set /a progress=i*100/count
    set "bar="
    for /l %%j in (0,5,!progress!) do set "bar=!bar!#"
    for /l %%j in (!progress!,5,100) do set "bar=!bar!-"
    cls
    echo [!bar!]
    echo Blocked IPs: !i!/!count!
    netsh advfirewall firewall add rule name="BadIP" dir=in action=block remoteip=%%a
    netsh advfirewall firewall add rule name="BadIP" dir=out action=block remoteip=%%a
)

pause








