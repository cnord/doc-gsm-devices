\pagebreak

## Беспроводные устройства

С помощью вкладки «Беспроводные устройства» в прибор записываются беспроводные устройства и их параметры, такие как тип, задержка на вход, задержка на выход и т.д.    
Все беспроводные устройства подключаются к прибору «Норд GSM» через расширитель «СН-Радио». Расширитель поддерживает подключение 31 устройства. Весь перечень устройств находится на [сайте](https://shop.cnord.ru/sn.html).

### Подключение устройства к прибору

\imgcapt{img/06-04-config-nord-02.png}{Добавление устройства, Вкладка «Беспроводные устройства»}
   

**Большинство устройств**
 
Для подключения устройств СН-ИК, СН-ИК-Улица, СН-ИК-Мини, СН-СМК, СН-СМК-Мини, СН-Стекло, СН-ИПР, СН-Вода, СН-Вода-Мини, СН-Цельсий, СН-К, СН-Ретр, СН-Ретр 220, СН-Выход, СН-Дым необходимо:

* Снять крышку с устройства;
* Установить элементы питания;
* На вкладке «Беспроводные устройства» конфигуратора нажать кнопку _Добавить беспроводное устройство_;
* Переключить беспроводное устройство в режим связывания кратковременным замыканием контактов «Сброс».

Вспышками зеленого светодиода устройств подтвердит переход в режим связывания.
Включение красного индикатора на 2 секунды оповещает об успешном завершении подключения устройства к прибору.
   

**СН-Сирена**

Для подключения устройств типа «СН-Сирена» и «СН-Дым» необходимо:

* Снять переднюю крышку, установить элементы питания;
* На вкладке «Беспроводные устройства» конфигуратора нажать кнопку _Добавить беспроводное устройство_;
* Переключить беспроводное устройство в режим связывания путем замыкания «минусового» контакта держателя батареи и контакта "4" на основании оповещателя.

Включение красного индикатора на 2 секунды оповещает об успешном связывании.
   

**СН-Брелок**

Для подключения устройства СН-Брелок к прибору необходимо:

* Вскрыть корпус брелока, установить батарею в держатель, закрыть корпус;
* На вкладке «Беспроводные устройства» конфигуратора нажать кнопку _Добавить беспроводное устройство_;
* Нажать и отпустить на брелке любую кнопку. Устройство будет периодически включать индикатор зеленым цветом, что свидетельствует о его нахождении в режиме «Связывание». При отсутствии указанной индикации нажать и удерживать одновременно все три кнопки на 2 секунды и более, при этом индикатор должен включиться зеленым цветом. Удерживать кнопки до включения индикатора красным цветом.

> Если брелок будет служить в качестве КТС, то после связывания необходимо установить галочку «КТС включена».


### Ретранслятор

«СН-Ретр» и «СН-Ретр 220» – это ретрансляторы, предназначенные для увеличения дальности работы беспроводных устройств.

После того, как хотя бы один ретранслятор будет подключен к прибору, на вкладке «Беспроводные устройства» в столбце «Через ретранслятор» для каждого устройства появится возможность выбрать, как оно должно передавать сигналы в прибор: напрямую или через указанный ретранслятор.

\imgcapt{img/06-04-config-nord-01.png}{Беспроводные устройства настроены на работу через ретранслятор}

> Обратите внимание, что подключение любого устройства (связывание) всегда выполняется непосредственно к прибору. После того, как подключение будет выполнено, можно переключить устройство на передачу сигналов через ретранслятор.

Цепочку ретрансляторов построить нельзя: между прибором и беспроводным устройством может быть только один ретранслятор.

Алгоритм работы беспроводных устройств реализован таким образом, что если ретранслятор выйдет из строя, а прибор будет «слышать» устройство без ретранслятора, то прием сигналов от таких устройств будет осуществляться без ретранслятора.


### Рекомендации по монтажу

1. Установку панели необходимо осуществить в таком месте, чтобы в области прямой радиовидимости до предполагаемых мест установки извещателей не было металлических или иных экранирующих конструкций. Например, за стеной от места установки панели может идти вентиляционный короб, который препятствует прохождению сигнала;
2. Для незначительного улучшения параметров радиотракта можно распрямить антенну расширителя СН-Радио и вынести ее за пределы корпуса панели;
3. Проверка мест установки датчиков должна производиться при том положении дверей/окон/ворот/решеток, которые актуальны на момент охраны – обычно, закрытые;
4. В предполагаемом месте установки датчика не должно быть металлических конструкций в основании стены (металлический профиль/арматура);
5. При выборе места установки, необходимо определять качество связи между устройством и прибором. Сделать это можно двумя способами:
	* На стороне беспроводного устройства:    
Нажать и удерживать 3 секунды тампер устройства. Если зеленый светодиод мигнет больше одного раза, то качество связи хорошее. Если включится красный светодиод, то нужно поменять место установки устройства.
	* На стороне прибора:
После записи конфигурации, в «Хаббле» открыть вкладку «Панель состояния» – «Беспроводные устройства». Если для выбранного устройства значение качества связи отмечено как "плохое", то рекомендуется изменить место предполагаемой установки устройства или воспользоваться ретранслятором «СН-Ретр».
