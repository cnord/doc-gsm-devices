\pagebreak

# Конфигурирование

Настройки прибора можно изменить, если подключить его к компьютеру, или удаленно, с помощью «Облака». Удаленное изменение настроек, а также удаленное обновление прошивки прибора описаны в главе «[Удаленный доступ к прибору](#remote-access)», а в этом разделе рассматривается конфигурирование прибора, подключенного к компьютеру.

Пакеты программ, которые потребуются для того, чтобы подключить прибор к компьютеру, выполнить обновление версии программного обеспечения и сконфигурировать его, можно загрузить с официального сайта технической поддержки НТКФ «Си-Норд» ([support.cnord.ru](http://support.cnord.ru)), со страницы «[Файлы для загрузки](https://support.cnord.ru/hc/ru/articles/203372340)».

Пакет для обновления версии программного обеспечения приборов поставляется в виде zip-архива с именем вида **CnordFirmware-YYYYMMDD-XX.XX.zip**, где **YYYYMMDD** – дата релиза программного обеспечения, а **XX.XX** – версия программного обеспечния в архиве. Содержимое архива необходимо распаковать в папку на жесткий диск компьютера. В архив включены следующие программы:

* драйвер для подключения прибора к компьютеру;   
Драйвер находится в папке **Driver**
* утилита, предназначенная для обновления версии программного обеспечения прибора;   
Исполняемый файл утилиты называется **CnordFirmware.exe**, именно этот файл необходимо запускать для обновления версии программного обеспечения прибора.

> В пакет для обновления версии программного обеспечения прибора включены актуальные версии прошивок для следующих устройств: «Норд GSM», «Норд RF», «Норд LAN», «Союз GSM», «Союз PCB GSM», «ТР-100 GSM IV» и «Сержант GSM». 

Для изменения настроек прибров предназначен специальный конфигуратор, который называется «Хаббл». Конфигуратор поставляется в виде zip-архива с именем **hubble-X.XX.zip**, где **X.XX** – цифры, соответствующие версии конфигуратора. Содержимое архива необходимо распаковать на жесткий диск компьютера, желательно – в корневую папку. 

> Если распаковать архив в корень диска по каким-то причинам нельзя, необходимо распаковать его в папку, в названии которой нет кириллических символов и пробелов. Если это условие не будет соблюдено, то конфигуратор прибора будет работать некорректно. 

Исполняемый файл конфигуратора называется **hubble.exe**, именно этот файл необходимо запускать для изменения настроек прибора.

> Конфигуратор «Хаббл» предназначен для изменения настроек следующих приборов: «Норд GSM», «Норд RF», «Норд LAN», «Союз GSM», «Союз PCB GSM», «ТР-100 GSM IV» и «Сержант GSM». 

