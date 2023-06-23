@echo off
SCHTASKS /CREATE /SC ONLOGON /TN "start_music_after_login" /TR "C:\Users\%USERNAME%\Startup\Startup-Windows\music_on_startup.bat" /DELAY 0000:10 /RL HIGHEST
SCHTASKS /CREATE /SC ONLOGON /TN "start_WallpaperEngine_after_login" /TR "C:\Users\%USERNAME%\Startup\Startup-Windows\Wallpaper_Engine_on_startup.bat" /DELAY 0000:30 /RL HIGHEST
SCHTASKS /CREATE /SC ONLOGON /TN "start_blockiplist_after_login" /TR "C:\Users\%USERNAME%\Startup\Startup-Windows\firewall.bat" /DELAY 0003:00 /RL HIGHEST
