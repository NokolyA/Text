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
Теперь проверим, что всё действительно работает.

1. Сначала запусти заставку вручную

Нажми Win + R и вставь:

"C:\Users\politype\AppData\Roaming\WinClockScreenSaver\WinClockScreenSaver.scr" /s

Нажми Enter.

Должен появиться полноэкранный экран с часами. Двигай мышью или нажми клавишу — заставка должна закрыться.

2. Если вручную работает

Ничего больше устанавливать не нужно. Оставь компьютер без мыши/клавиатуры на 5 минут — Windows должна автоматически запустить заставку.

3. Если хочешь проверить таймер быстрее

Поставь, например, 10 секунд:

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 10 /f

Подожди 10 секунд бездействия.

После проверки можешь вернуть 5 минут:

reg add "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 300 /f

Начни с пункта 1. Если там появится ошибка — пришли её текст целиком.

"C:\Users\politype\AppData\Roaming\WinClockScreenSaver\ClockScreenSaver.scr" /c
