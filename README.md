https://github.com/y0av/WinClockScreenSaver/releases/tag/v1.0

Скачать готовый .scr.
Положить, например, в:

%APPDATA%\WinClockScreenSaver\

Не нажимать «Install» на .scr.
Через обычный cmd прописать заставку только для своего пользователя:

reg add "HKCU\Control Panel\Desktop"
/v SCRNSAVE.EXE/t REG_SZ /d "%APPDATA%\WinClockScreenSaver\WinClockScreenSaver.scr" /f

Включить заставку:

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f

Задать время бездействия, например 5 минут:

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 300 /f
