@echo off
for /f "tokens=1 delims=:" %%a in ("%time%") do set "hour=%%a"
start /d "C:/Program Files (x86)/Steam/steamapps/common/wallpaper_engine/" wallpaper64.exe
timeout /t 5
if %hour% GEQ 8 if %hour% LEQ 14 (
    timeout /t 5
    start "" "C:/Users/%USERNAME%/startup/Startup-Windows/Key_Press/8to14.vbs"
) else if %hour% GEQ 15 if %hour% LEQ 21 (
    timeout /t 5
    start "" "C:/Users/%USERNAME%/startup/Startup-Windows/Key_Press/15to21.vbs"
) else if %hour% GEQ 22 if %hour% LEQ 24 (
    timeout /t 5
    start "" "C:/Users/%USERNAME%/startup/Startup-Windows/Key_Press/22to7.vbs"
) else if %hour% GEQ 1 if %hour% LEQ 7 (
    timeout /t 5
    start "" "C:/Users/%USERNAME%/startup/Startup-Windows/Key_Press/22to7.vbs"
)