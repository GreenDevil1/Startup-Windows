@echo off
for /f "tokens=1 delims=:" %%a in ("%time%") do set "hour=%%a"
set /a rand1=%random% %% 2 + 1
set /a rand2=%random% %% 3 + 1
set /a rand3=%random% %% 3 + 1
set /a rand4=%random% %% 3 + 1
if %hour% GEQ 8 if %hour% LEQ 14 (
    start /d "C:/Program Files (x86)/Windows Media Player/" wmplayer.exe "C:/Users/green/Documents/Python/Startup/Music_8_to_14/%rand1%.wav"
) else if %hour% GEQ 15 if %hour% LEQ 21 (
    start /d "C:/Program Files (x86)/Windows Media Player/" wmplayer.exe "C:/Users/green/Documents/Python/Startup/Music_15_to_21/%rand2%.wav"
) else if %hour% GEQ 22 if %hour% LEQ 24 (
    start /d "C:/Program Files (x86)/Windows Media Player/" wmplayer.exe "C:/Users/green/Documents/Python/Startup/Music_22_to_7/%rand3%.wav"
) else if %hour% GEQ 1 if %hour% LEQ 7 (
    start /d "C:/Program Files (x86)/Windows Media Player/" wmplayer.exe "C:/Users/green/Documents/Python/Startup/Music_22_to_7/%rand4%.wav"
)