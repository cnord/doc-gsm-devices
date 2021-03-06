\pagebreak

## Панель состояния

При выполнении работ по монтажу объекта инженеру обычно нужно выполнить проверку, что размещение и подключение датчиков выполнено правильно и неисправностей в их работе нет.

В конфигураторе на вкладке "Панель состояния" отображается актуальная информация о состоянии проводных шлейфов, беспроводных устройств, подключенных к прибору, а так же состояние каналов связи.

\imgcapt{img/06-16-config-dashboard-01.png}{Вкладка «Панель состояния», каналы связи}

### Каналы связи

При монтаже и обслуживании прибора важно знать актуальную информацию о состоянии каналов связи. С помощью вкладки "Панель состояния" можно видеть на какой SIM-карте и по какому каналу связи работает прибор в данный момент. 

Для каждого канала связи, имеющегося в настройках прибора, отображается его текущее состояние: активен / не активен, есть ли подключение к «Центру охраны» и «Облаку», какие ошибки возникли при инициализации канала, подключении к пульту или передаче событий.

С помощью кнопки «Вкл.» можно выполнить принудительный переход на тот канал связи, работу которого нужно проверить. Для того чтобы инженер мог убедиться, что канал действительно работает, при нажатии на кнопку «Вкл.» формируется тестовое событие с кодом **E602**, которое будет передано по каналу, если он будет успешно инициализирован.

Слева от кнопки «Вкл.» отображается количество событий, которые были переданы на пульт с того момента, как канал в последний раз был активен.

### Проводные шлейфы

Для каждого проводного шлейфа, который включен на вкладке [Шлейфы](#config-zones), отображается его физическое состояние. Например, если шлейф в данный момент в нарушен (в тревоге), то значок, с номером соответствующим номеру шлейфа, будет красным. Если по шлейфу есть неисправность, то это также будет указано в панели состояния. Если шлейф выключен в настройках прибора, то информация по нему отображаться не будет.

\imgcapt{img/06-16-config-dashboard-02.png}{Вкладка «Панель состояния», Шлейфы в состоянии: норма, тревога, короткое замыкание, обрыв}

### Беспроводные устройства

Для беспроводных устройств в "Панели состояния" отображается следующая информация:

* Оценка качества связи;
* Текущее состояние устройства.

\imgcapt{img/06-16-config-dashboard-03.png}{Вкладка «Панель состояния». вверху - значки беспроводных устройств, внизу - детальная информация}

#### Состояние устройства

На вкладке Беспроводные устройства отображается информация обо всех беспроводных устройствах, записанных в конфигурацию прибора.

Если устройство в тревоге, то весь значок будет окрашен в красный цвет, а при наличии какой-либо неисправности, это будет указано внизу значка.
При нажатии на значок беспроводного устройства, можно получить более детальную информацию о его состоянии.

#### Оценка качества сигнала беспроводных устройств

Беспроводной расширитель, подключенный к прибору, выполняет оценку качества сигнала каждого беспроводного устройства. Индикатором качества связи является кольцо вокруг номера и названия устройства. 

Цвет и заполнение кольца соответствует измеренному радиомодулем отношению _сигнал / шум_ в сигнале, принятом от беспроводного устройства:

* Отличное - зеленый цвет, кольцо полностью заполненно;
* Хорошее - желтый цвет, кольцо частично заполненно;
* Плохое - красный цвет, кольцо частично заполненно;
* Нет связи - красный цвет, кольцо полностью заполненно. 
