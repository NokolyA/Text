Таймер:

control desk.cpl,,@screensaver

В cmd 

Цвет:

"C:\Users\politype\AppData\Roaming\WinClockScreenSaver\ClockScreenSaver.scr" /c

Ручной старт через win r

"C:\Users\politype\AppData\Roaming\WinClockScreenSaver\ClockScreenSaver.scr" /s




" /v ScreenSaveTimeOut /t REG_SZ /d 300 /f

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
Понял. Тут важный момент: 120 секунд в настройках самой заставки — это не таймер запуска заставки. Это, скорее всего, параметр самой ClockScreenSaver (например, эффект/переход).

Таймер запуска Windows мы задавали отдельно через ScreenSaveTimeOut. Если после 5+ минут заставка не запускается, значит Windows не использует нашу настройку автоматически — вероятно, её переопределяет политика рабочего ПК или параметр не применился.

Давай проверим без гаданий. Выполни в cmd:

reg query "HKCU\Control Panel\Desktop" /v SCRNSAVE.EXE

Потом:

Проверим это одной командой:
reg query "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure
Если увидишь значение 0x1, значит пароль после заставки принудительно включён политикой.
Ещё одна проверка:
reg query "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop"
