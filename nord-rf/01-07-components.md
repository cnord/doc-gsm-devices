\pagebreak

## Устройство изделия

### Функциональные узлы

Изделие состоит из следующих основных функциональных узлов, размещенных в металлическом корпусе:

* платы «Норд RF» с установленными на ней элементами, коммуникационными разъемами и технологическим светодиодом;
* динамической головки номинальной электрической мощностью 1,0 Вт подключенной к специализированному разъему платы «Норд RF»; 
* модуля сетевого электропитания типа LPH-18-12  или LPV-20-12 с выходным напряжением 12B;
* трехконтактной электрической колодки типа DG801-03P-11 для подключения сетевых проводов и заземления с установленным в ней сетевым предохранителем (плавкой вставкой) номиналом 1,0 А;
* кабеля АБ-15 для подключения устанавливаемой в изделие АКБ;
* опционального модуля «Адаптер Ethernet», являющегося коммуникатором в сети Ethernet и устанавливаемой снизу основной  платы  «Норд RF»;
* опционального модуля «СН-РАДИО», предназначенного для подключения к изделию беспроводных извещателей;
* опционального модуля «РПШ-8», предназначенного для расширения числа проводных шлейфов изделия до 16;
* АКБ (в комплект поставки изделия не входит), емкостью 7,2 А·ч.

### Печатная плата

Основой изделия является плата «Норд RF»  размерами 180 х 70 мм с четырьмя посадочными отверстиями. На верхней стороне платы расположены:

* микроконтроллер;
* кнопка переключения каналов связи;
* микросхема FLASH-памяти;
* микросхемы и разъем интерфейса TR-100 OUT;
* компоненты интерфейса 1-Wire;
* компоненты клавиатурного интерфейса SecuBUS;
* драйверы дискретных выходов;
* технологический двухцветный светодиод;
* микропереключатель датчика вскрытия корпуса;
* источник бесперебойного электропитания;
* стабилизаторы с выходными напряжениями в 3,3; 4,5 и 5,0 В;
* клеммные соединители для подключения  модуля сетевого электропитания, АКБ, охранных шлейфов,  интерфейсов 1-Wire, RS-485, SecuBUS, дискретных выходов и внешнего датчика вскрытия корпуса; 
* разъем  для подключения динамической головки;
* разъем для подключения опциональной платы «СН-РАДИО»;
* разъем типа «mini USB B» для установки рабочих параметров изделия (для его конфигурирования).

На нижней стороне платы «Норд RF» расположена 8-ми контактная гнездовая линейка для подключения опционального модуля «Адаптер Ethernet».

### Модуль «Адаптер Ethernet»

Опциональный модуль «Адаптер Ethernet» имеет размеры 55х20 мм и одно посадочное отверстие для крепления к основной плате с помощью винта, пропущенного через установочную втулку. На плате модуля «Адаптер Ethernet»:

* cтабилизатор напряжения 3,3 В;
* cетевой контроллер ENC28J60/SS;
* 8-ми контактная штыревая линейка для коммуникации с основной платой;
* cетевая розетка  LU1T516-43 (Wiznet) или аналогичная.

### Модуль «СН-Радио»

Опциональный модуль «СН-Радио» имеет габаритные размеры 51х43х20 мм и два отверстия для крепления к корпусу изделия. На плате модуля расположены:

* стабилизатор напряжения 3,3 В;
* трансивер MRF49XA, работающий в  ISM-диапазоне 433 МГц;
* контроллер PIC18F26K20;
* разъем интерфейса  RS-232 (v.24) для подключения четырехпроводным кабелем к головной плате «Норд GSM»;
* штыревая антенна в виде отрезка одножильного изолированного провода, зафиксированная  винтом клеммного соединителя.

### Модуль «РПШ-8»

Опциональный модуль «РПШ-8» имеет габаритные размеры 54х43х20 мм и два отверстия для крепления к корпусу изделия. На плате модуля расположены:

* шестнадцать клеммных соединителей для подключения проводов шлейфов;
* шестнадцать диодов развязки типа 1N4148 (на нижней стороне).
