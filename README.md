https://github.com/y0av/WinClockScreenSaver/releases/tag/v1.0

Да. Создай:

C:\Users\politype\AppData\Roaming\WinClockScreenSaver\

и положи туда .scr.

Затем команды по одной строке:

reg add "HKCU\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d "C:\Users\politype\AppData\Roaming\WinClockScreenSaver\WinClockScreenSaver.scr" /f

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 300 /f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

300 = 5 минут.
