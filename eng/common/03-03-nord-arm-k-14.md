## K14-LED Keypad

\imgcapt{img/k14.png}{К14-LED keypad}

Using the K14-LED keypad, the user can perform the following tasks:

* check the partition status (armed/disarmed);
* arm or disarm a partition;
* check about the beginning or active exit or entry delay;
* check the protection state of the entire device;

The K14-LED keypad has green and red LEDs:

* the red LED is on continuously if all device partitions are armed;
* if the partition is disarmed, the red LED goes out and the green LED is lit.
* Red and green LEDs flash simultaneously if an error occurs. For example, if an incorrect user code is entered or in case of arming rejection.

### Getting Information about Site Status

To get information about a site status press **i** button:

* if the partitions are configured on the device and all partitions are armed, the keypad will say: "Site is armed" and the red LED will turn on.
* if the partitions are configured on the device and all partitions are disarmed, the keypad will say: "Site is disarmed" and the green LED will turn on.
* if the partitions are configured on the device and some of them are armed and others are disarmed, the keypad displays an error indication.
* if the partitions are not configured on the device, the keypad displays an error indication.

### Getting Information about Partition Status

To get information about a partition status press the partition number button and **i** button:

* if the partition exists, the keypad says its state and turns on the corresponding LED.
* if the partition does not exist, the keypad displays an error indication.

### Arming and Disarming

The device has the ability to arm and disarm several partitions with one user code. The partitions that can be armed or disarmed with a specific code are configured during the device configuration.

#### Arming

To arm a partition, it is necessary to press the "house" icon and enter the user code.

* if the code is correct, then the site (partition) will be armed, the keypad will confirm the arming by turning on the red LED. Or the countdown of the exit delay will start, which will be accompanied by a sound and LED indication.
* if the code is incorrect or the user who owns this code has more than one partition, the keypad will display an error.
* if arming is not possible, the keypad will display an error.

\imgcapt{img/arm.png}{}

If several partitions are assigned to the user code, then first the user shall click the "house" button, select the partition, which state he/she wants to change, and then type the code.

\imgcapt{img/arm_part.png}{Example of partition arming}

#### Arming Rejection

"Arming rejection" is the impossibility to arm the site, if the security alarm on the site is faulty, or arming is prohibited due to lack of payment for security services.

There are the following reasons for arming rejection:

* malfunction of one or more zones;
* alarm in one or more zones;
* no communication with the panel program via IP channel;
* absence of 220V on the site;
* no payment for security services;
* the device case is opened.

#### Disarming

If the user can control only one partition, to disarm it is necessary to enter the user code.

* if the code is correct, then the site (partition) will be disarmed. The keypad will confirm disarming by turning on the green LED;
* if the code is incorrect or the user, who owns this code, can control several partitions, the keypad will display an error.

\imgcapt{img/disarm.png}{}

If the user can control several partitions, to disarm them, it is necessary to type the partition number, then # and enter the user code.

* If the code is correct, then the partition will be disarmed. The keypad will confirm disarming by turning on the green LED.
* In case of repeated disarming of the same partition, the keypad will display its status: the green LED will turn on.

\imgcapt{img/disarm_part.png}{Example of disarming with partition selection}

The exit or entry delay countdown is indicated by the intermittent sound, which is reproduced during the entire delay interval. The sound indication of the exit or entry delay is disabled when any button on the keypad is pressed.

### Sound and Voice Indication

The keypad has a built-in speaker, through which the voice indication and beep indication are made. Pressing the buttons on the keypad is accompanied by a beep that confirms the press.

The voice indicates the following:

* Arming and disarming of the partitions and the entire site;
* Arming rejections;
* Warnings about receivables during arming;
* The status of the partition or the entire site (when the i key is pressed).

The keypad has a volume control for the built-in speaker. The Adjustment is five-step - from the state "off" to the volume levels from the first to the fourth. The volume level can be selected by pressing the "#" and "9" keys.

### Panic Button

If the device configuration permits the use of the keypad as a panic button, then for activation it is necessary to press and hold the "houses" button for 3 seconds. The panic button pressing is confirmed by turning on of green and red LEDs for 1 second accompanied by sound.

If the device configuration prohibits the use of the keypad as a panic button, then the keypad will display an error.
## Клавиатура К14-LED

\imgcapt{img/k14.png}{Клавиатура К14-LED}

С помощью клавиатуры К14-LED пользователь может выполнить следующие задачи:

* узнать состояние раздела (взят / снят);
* взять раздел под охрану или снять раздел с охраны;
* узнать о начавшейся или продолжающейся задержке на вход или выход;
* узнать состояние охраны всего прибора;

На клавиатуре К14-LED расположены зеленый и красный светодиоды:

* Красный светодиод постоянно горит, если все разделы прибора взяты под охрану.
* При снятии раздела с охраны гаснет красный светодиод, а зелёный загорается.
* Красный и зеленый светодиоды одновременно мигают, если произошла ошибка. Например, при вводе неправильного кода пользователя или при отказе от взятия.

### Получение состояния объекта

Для получения информации о состоянии объекта нужно нажать кнопку **i**:

* если на приборе сконфигурированы разделы и все разделы взяты под охрану, клавиатура произнесёт: "Объект взят под охрану" и включит красный светодиод.
* если на приборе сконфигурированы разделы и все разделы сняты с охраны, клавиатура произнесёт: "Объект снят с охраны" и включит зеленый светодиод.
* если на приборе сконфигурированы разделы и некоторые из них взяты под охрану, а некоторые – сняты с охраны, клавиатура отображает индикацию ошибки.
* если на приборе не сконфигурированы разделы, клавиатура отображает индикацию ошибки.

### Получение состояния раздела

Для получения информации о состоянии раздела нужно нажать кнопку номера раздела и кнопку **i**:

* если раздел существует, то клавиатура произносит его состояние и включает соответствующий светодиод.
* если раздел не существует, клавиатура отображает индикацию ошибки.

### Взятие и снятие

В приборе реализована возможность взятия и снятия с охраны нескольких разделов одним кодом пользователя. Настройка разделов, которые могут быть взяты или сняты с охраны конкретным кодом, выполняется при конфигурировании прибора.

#### Взятие под охрану

Для взятия раздела под охрану нужно нажать «домик» и ввести код пользователя.

* если код верный, то объект (раздел) будет взят под охрану, клавиатура подтвердит взятие включением красного светодиода. Либо включится отсчет интервала задержки на выход, которая сопровождается звуковой и светодиодной индикацией.
* если код неверный или пользователю, которому принадлежит этот код, соответствует более одного раздела, то клавиатура отобразит ошибку.
* если взятие под охрану невозможно, то клавиатура отобразит ошибку.

\imgcapt{img/arm.png}{}

Если за кодом пользователя закреплено несколько разделов, то сначала пользователь должен нужно нажать кнопку «домик», выбрать раздел, состояние которого он хочет изменить, а после этого набрать код.

\imgcapt{img/arm_part.png}{Пример взятия с выбором раздел}

#### Отказ от взятия

«Отказ от взятия» -- это невозможность взять объект под охрану, если охранная сигнализация на объекте неисправна, либо взятие под охрану запрещено из-за отсутствия оплаты за услуги охраны.

Предусмотрены следующие причины отказа от взятия:

* неисправность одного или нескольких шлейфов;
* тревога в одном или нескольких шлейфах;
* отсутствие связи с пультовой программой по IP-каналу;
* отсутствие 220В на объекте;
* отсутствие оплаты за услуги охраны;
* открыт корпус прибора.

#### Снятие с охраны

Если пользователь может управлять только одним разделом, для снятия с охраны нужно ввести код пользователя.

* если код верный, то объект (раздел) снимется с охраны. Клавиатура подтвердит снятие включением зелёного светодиода;
* если код неверный или пользователь, которому принадлежит этот код, может управлять несколькими разделами, клавиатура отобразит ошибку.

\imgcapt{img/disarm.png}{}

Если пользователь может управлять несколькими разделами, для снятия с охраны нужно набрать номер раздела, затем # и ввести код пользователя.

* Если код верный, то раздел снимется с охраны. Клавиатура подтвердит снятие включением зелёного светодиода.
* При повторном снятии того же раздела клавиатура отобразит его состояния: включится зеленый светодиод.

\imgcapt{img/disarm_part.png}{Пример снятия с выбором раздел}

Отсчет интервала задержки на вход или интервала задержки на выход индицируется прерывистым звуком, который воспроизводится в течение всего интервала задержки. Звуковая индикация задержки на вход или выход отключается при нажатии на любую кнопку на клавиатуре.

### Звуковая и голосовая индикация

Клавиатура имеет встроенный динамик, через который производится голосовая индикация и индикация бипером. Нажатие кнопок на клавиатуре сопровождается звуковым сигналом, подтверждающим нажатие.

Голосом индицируется:

* Взятие под охрану и снятие с охраны разделов и объекта в целом;
* Отказы от взятия;
* Предупреждения о дебиторской задолженности при взятии под охрану;
* Состояние раздела или объекта в целом (при нажатии клавиши i).

В клавиатуре предусмотрена регулировка громкости встроенного динамика. Регулировка пятиступенчатая - от состояния «выключен» до уровней громкости с первого по четвёртый. Выбор уровня громкости осуществляется с помощью комбинации клавиш "#" и "9".

### Тревожная кнопка

Если в конфигурации прибора разршено использование клавиатуры в качестве тревожной кнопки, то для активации нужно нажать и удерживать нажатыми в течение 3 секунд кнопки «домиков». Включение зеленого и красного светодиодов на 1 секунду в сопровождении звука говорит о подтверждении нажатия тревожной кнопки.

Если в конфигурации прибора запрещено использование клавиатуры в качестве тревожной кнопки, то клавиатура отобразит ошибку.
