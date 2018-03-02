## Вкладка «Шлейфы» {#config-zones}

На вкладке «Шлейфы» выполняется настройка параметров проводных шлейфов, подключенных к прибору.

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=\textwidth]{img/06-03-config-nord-01.png}
 	}
	\captionof*{figure}{Вкладка «Шлейфы»}
\end{minipage}

### Расширитель «РПШ-8»

Без использования дополнительного оборудования к прибору «Норд GSM» можно подключить до 8 проводных шлейфов. В случае, если используется расширитель проводных шлейфов «РПШ-8», количество проводных шлейфов увеличивается до 16.

Если «галочка» для параметра «Расширитель на 8 шлейфов подключен» установлена, то механизм опроса проводных шлейфов изменяется, а общее количество шлейфов на вкладке увеличивается до 16.

Схема подключения расширителя к прибору, а также схемы подключения шлейфов к расширителю, приведены в разделе [«Подключение расширителя РПШ-8»](#install-wze-8).

> Поскольку расширитель «РПШ-8» подключается к клеммам «FIRE» и «DEFECT», на вкладке «Разное» изменяется список доступных клемм для подключения светового оповещателя «Маяк»: без расширителя «Маяк» может быть подключен к клеммам «FIRE» и «SMOKE», а если расширитель подключен, то для «Маяка» свободной остается только клемма «SMOKE». 

### Нумерация шлейфов

Номера шлейфов, которые отображаются в конфигураторе, соответствуют маркировке клемм на печатной плате: «Z1» – шлейф №1, «Z2» – шлейф №2 и так далее.

Если к прибору подключен расширитель «РПШ-8», то клемма «Z1» предназначена для подключения сигнальных кабелей от шлейфов №1 и №9, клемма «Z2» - для кабелей от шлейфов №2 и №10 и так далее. Другими словами, клемма N предназначена для подключения кабелей от шлейфов «N» и «N+8». 

### Включение и выключение шлейфа

Кнопка включения / выключения шлейфа находится в левой колонке, сразу за номером шлейфа. Цвет кнопки отражает текущее состояние шлейфа: если кнопка зеленая, то шлейф включен, если кнопка красная, то выключен. Надпись на кнопке соответствует операции, которая будет выполнена при нажатии на кнопку: на зеленой кнопке написано «Выключить», потому что при нажатии на кнопку шлейф будет выключен, а на красной кнопке написано «Включить», так как при нажатии на красную кнопку шлейф будет включен.

Для того, чтобы прибор начал контролировать состояние шлейфа, а также для того, чтобы можно было выполнить настройку шлейфа, его необходимо включить.

Если проводной шлейф *выключен*, то его состояние, а также изменения состояния игнорируются прибором. Кроме того, если шлейф выключен, то его нельзя добавить в раздел: в списке доступных для добавления в раздел шлейфов он не отображается. При этом, если шлейф был добавлен в раздел до того, как он был выключен, шлейф остается в разделе.

Выключение шлейфа может быть полезным в том случае, если необходимо временно прекратить контроль шлейфа, например, вследствие его неисправности. Выключить шлейф можно как при подключении к прибору локально (по USB), так и при удаленном подключении из web-конфигуратора.

### Тип шлейфа {#config-zones-types}

Установка типа для шлейфа является ключевым моментом в настройке шлейфа, так как этот параметр полностью определяет реакцию прибора на изменение состояния шлейфа. От того, какой указан тип для шлейфа, зависит следующее: 

* будет ли прибор реагировать на переход шлейфа в состояние «Тревога» всегда, либо только в то время, когда раздел, в который включен шлейф, взят под охрану;
* какой код события будет передан на пульт охраны при тревоге в шлейфе;
* будет ли включена сирена при тревоге в шлейфе;
* будет ли выключено и снова включено питание на клемме «SMOKE» после тревоги в шлейфе;
* будет ли контролироваться нормальное состояние шлейфа при взятии раздела, в который он включен, под охрану.

Отличия между типами проводных шлейфов, приведены в таблице ниже:

\begin{minipage}{\linewidth}
\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\newcolumntype{Y}{>{\raggedright\arraybackslash}X}
\begin{tabularx}{\textwidth}{llccY}
\toprule
\textbf{Тип шлейфа} & \textbf{Коды событий} & \textbf{Взятие / снятие} & \textbf{Сирена} & \textbf{Примечание} \\
\midrule
Охранный & E130 / R130 & Да & Да \\
\arrayrulecolor{light-gray}\hline
Охранный без сирены & E146 / R146 &  Да & Нет \\ 
\arrayrulecolor{light-gray}\hline
Проходной & E130 / R130 & Да & Да & Тревога в шлейфе специальным образом обрабатывается при взятии и снятии (см. ниже). \\ 
\arrayrulecolor{light-gray}\hline
Пожарный & E110 / R110 & Нет & Да & Тревога в шлейфе сопровождается сбросом питания пожарных датчиков (см. ниже). \\
\arrayrulecolor{light-gray}\hline
КТС с фиксацией & E120 / R120 & Нет & Нет \\ 
\arrayrulecolor{light-gray}\hline
КТС без фиксации & E120 / R120 & Нет & Нет & Для шлейфа этого типа используется отдельный интервал повтора тревог (см. ниже).  \\ 
\arrayrulecolor{light-gray}\hline
Тампер датчиков & E144 / R144 & Нет & Да \\ 
\arrayrulecolor{light-gray}\hline
24-часовой охранный & E133 / R133 & Нет & Да \\ 
\arrayrulecolor{light-gray}\hline
24-часовой & E150 / R150 & Нет & Да \\ 
\arrayrulecolor{light-gray}\hline
Протечка воды & E154 / R154 & Нет & Да \\ 
\arrayrulecolor{light-gray}\hline
Утечка газа & E151 / R151 & Нет & Да \\ 
\bottomrule
\end{tabularx}
\captionof*{table}{Типы проводных шлейфов}
\end{minipage}

> Если для типа шлейфа указано «Да» в колонке «Взятие / снятие», то это означает, что шлейф такого типа может быть взят под охрану или снят с охраны вместе с любым из разделов, в который он включен. Если же для типа шлейфа указано «Нет» в колонке «Взятие / снятие», то это означает, что шлейф такого типа взят под охрану *всегда*.

> Если для типа шлейфа указано «Да» в колонке «Сирена», то это означает, что при тревоге в шлейфе такого типа будет включена сирена.

**Тип шлейфа «Проходной»**

Если для шлейфа указан тип «Проходной», то такой шлейф специальным образом обрабатывается при взятии и снятии.

При взятии под охрану состояние проходного шлейфа игнорируется: прибор будет взят под охрану даже в том случае, если шлейф, сконфигурированный, как проходной, находится в тревоге. Кроме того, состояние проходного шлейфа игнорируется вплоть до окончания задержки на выход для всех шлейфов раздела, который берется под охрану. При этом задержку на выход для самого проходного шлейфа задать нельзя, у него всегда есть задержка на выход, равная наибольшей задержке на выход других шлейфов, включенных в раздел.

Если раздел, в который включен проходной шлейф, взят под охрану и проходной шлейф становится тревожным, то сначала выполняется проверка, не начался ли отсчет задержки на вход для другого шлейфа раздела. Если идет отсчет задержки на вход, то тревога в проходном шлейфе игнорируется. Если задержки на вход нет, то по проходному шлейфу будет сформировано событие «Тревога» (**E130**).

**Тип шлейфа «Пожарный»**

Для данного типа шлейфа предусмотрен механизм автоматического выключения и включения питания пожарных датчиков, если шлейф не пришел в норму за интервал повтора тревог.

> Питание пожарных датчиков, которые требуют выключения питания для восстановления нормального состояния, должно быть подключено к выходу «SMOKE».

**Тип шлейфа «КТС без фиксации»**

Если для шлейфа указан тип «КТС без фиксации», то такой шлейф имеет собственный интервал повтора тревог. 

Для данного типа шлейфа интервал повтора тревог, заданный для прибора, не используется. Вместо него выставляется значение, равное 5 секундам. Таким образом, повторное нажатие на тревожную кнопку не раннее, чем через 5 секунд, приведет к передаче еще одного события на пульт.

### Нормальное состояние шлейфа

С помощью значения, которое задается в колонке «Норма», можно определить *нормальное* состояние для шлейфа сигнализации:

* если нормальное состояние для шлейфа определено, как *замкнутый*, то в таком шлейфе должны использоваться извещатели, которые также имеют *замкнутые* контакты своего выходного реле в нормальном состоянии. При тревоге такие извещатели должны *размыкать* контакты выходного реле;
* если нормальное состояние для шлейфа определено, как *разомкнутый*, то в таком шлейфе должны использоваться извещатели, которые имеют *разомкнутые* контакты своего выходного реле в нормальном состоянии. При тревоге такие извещатели должны *замыкать* контакты выходного реле.

Необходимо отметить, что подавляющее большинство современных инфракрасных и магнитоконтактных извещателей имеют *нормально замкнутые* контакты своего выходного реле. Таким образом, для шлейфов, в которые включены эти датчики, нормальное состояние должно быть определено, как *замкнутый*.

### Оконечные резисторы

С помощью значения, которое задается в колонке «Резисторы» можно указать количество оконечных резисторов, установленных в шлейфе.

Если при подключении шлейфа не используется оконечных резисторов, то для такого шлейфа прибор может определить только одно из двух состояний: «Тревога» или «Норма». Такой шлейф весьма уязвим: если нормальное состояние для шлейфа определено, как *разомкнутый*, то достаточно просто перекусить кабель шлейфа в любом доступном месте, и шлейф навсегда останется в нормальном состоянии, тревоги по такому шлейфу не будет никогда. Ничуть не лучше выглядит шлейф, нормальное состояние для которого определено, как *замкнутый*: если удастся замкнуть сигнальные кабели шлейфа накоротко, то тревоги по нему также никогда не будет.

Один оконечный резистор, установленный в шлейфе, позволяет отличить неисправность в шлейфе от тревоги. Какая именно неисправность может быть определена – обрыв или короткое замыкание – зависит от нормального состояния шлейфа: для нормального состояния шлейфа *разомкнутый* один оконечный резистор позволяет определить обрыв шлейфа, а для нормального состояния *замкнутый* – короткое замыкание.

Два оконечных резистора позволяют определить и обрыв, и короткое замыкание для шлейфа с любым нормальным состоянием.

> Для *минимального* противодействия выводу шлейфов сигнализации из строя, рекомендуется включать в шлейфы один оконечный резистор.

### Задержка на вход

Параметр «Задержка на вход» позволят отложить формирование сигнала «Тревога» на время, которое указано в качестве значения для этого параметра. Как правило, этот параметр задается для шлейфов, которые пользователю *необходимо* нарушить для того, чтобы добраться до устройства управления сигнализацией. В качестве распространенных примеров таких шлейфов можно привести магнитоконтактные датчики, которые защищающие входные двери в охраняемое помещение.

Как работает задержка на вход? Предположим, что у нас есть шлейф, в него включен магнитоконтактный извещатель, который установлен на входной двери в офис. Для этого шлейфа задана задержка на вход, равная 15 секундам. Кодонаборник, с помощью которого можно снять охранную сигнализацию с охраны, находится внутри офиса, то есть нужно открыть входную дверь для того, чтобы до него добраться. Пользователь открывает входную дверь, магнитоконтактный извещатель срабатывает, но прибор не формирует тревогу, а начинает отсчет задержки на вход. Если в течение 15 секунд пользователь введет код, с помощью которого сигнализация будет снята с охраны, то тревога так и не будет сформирована, вместо нее на пульт охраны будет отправлено событие о снятии прибора с охраны. Если же в течение 15 секунд прибор не будет снят с охраны, то будет сформирована тревога.

Значение параметра «Задержка на вход» можно указать только шлейфов, тип которых задан, как «Охранный» или «Охранный без сирены». Связано это с тем, что шлейфы всех остальных типов (за исключением «Проходного») не могут быть взяты или сняты с охраны: они находятся под охраной всегда. Что же касается типа шлейфа «Проходной», то шлейфы этого типа обрабатываются при взятии или снятии специальным образом, так, как описано выше, в разделе «Типы шлейфов».

**Событие «Возможная тревога»**

При нарушении шлейфа с задержкой на вход прибор безусловно формирует событие «Возможная тревога» (**E138**). В качестве аргументов события передаются номер нарушенного шлейфа и наименьший номер раздела, в который этот шлейф включен. Если будут нарушены несколько шлейфов с задержкой на вход, то для каждого шлейфа будет сформировано событие «Возможная тревога».

На некоторых объектах контрольную панель нельзя разместить так, чтобы она находилась в отдельно охраняемой части помещения. Как правило, к таким объектам можно отнести небольшие помещения: торговые павильоны, гаражи, маленькие офисы и квартиры. Это означает, что во время отсчета задержки на вход контрольная панель может быть выведена из строя. Событие «Возможная тревога» позволяет пульту охраны контролировать работоспособность прибора после того, как начнется отсчет задержки на вход: если после начала задержки на вход не будет получено события о снятии прибора с охраны, то это повод выяснить, что происходит на объекте.

Для автоматического контроля получения снятия после возможной тревоги в «Центре охраны», необходимо воспользоваться обработчиком событий «Вход через тревогу» или обработчиком событий «Контроль цепочки событий». 

### Задержка на выход

Назначение параметра «Задержка на выход» очень схоже с назначением параметра «Задержка на вход», но только он предназначен для того, чтобы дать возможность пользователю выйти из охраняемого помещения после того, как он выполнил взятие прибора под охрану. Задержка на выход, как правило, устанавливается для шлейфов, которые защищают входные двери в охраняемые помещения.

После того, как пользователь выполняет взятие раздела (с помощью клавиатуры, беспроводного брелока или ТМ-считывателя), прибор проверяет состояние всех шлейфов, включенных в раздел:

* если обнаруживается неисправный шлейф, то прибор отказывается от взятия;
* если обнаруживается шлейф в тревоге, то прибор тоже отказывается от взятия;
* если неисправных или тревожных шлейфов нет, то прибор берется под охрану и начинается отсчет задержки на выход, если она есть.

Событие о взятии под охрану (**E401**) формируется непосредственно при взятии, перед началом задержки на выход, если она есть. В качестве аргументов события передаются номер взятого под охрану раздела, а также номер пользователя, который выполнил взятие.

После того, как начался отсчет задержки на выход, прибор игнорирует состояние всех шлейфов, для которых задана задержка на выход, а также шлейфов с типом «Проходной». Если пользователь успеет покинуть помещение и закрыть входную дверь до того, как закончится отсчет задержки на выход, то тревоги после взятия не будет. Если же какой-то из шлейфов будет нарушен после того, как закончится задержка на выход, то будет сформирована тревога.

Для беспроводных устройств за актуальное принимается то состояние, которое было получено при последнем опросе устройства. Таким образом, пользователю беспроводной системы может потребоваться подождать, пока беспроводной извещатель не пришлет в прибор норму. В случае, если ждать не хочется, можно задать для беспроводных извещателей минимально возможную задержку на выход.

Может случится так, что во время взятия нельзя добиться нормального состояния одного или нескольких шлейфов, например, в том случае, если извещатели в шлейфах контролируют область клавиатуры. В этом случае шлейфы необходимо сконфигурировать, как *проходные*. Подробнее проходные шлейфы описаны выше, в разделе «Типы шлейфов».

Тревога в шлейфах с задержкой на выход на момент взятия игнорируется. Это сделано для того, чтобы пользователю не нужно было проверять и закрывать входную дверь. Но, если хочется быть уверенным, что все шлейфы сигнализации находятся в норме на момент взятия, можно включить контроль тревоги в шлейфах с задержкой на выход на момент взятия. Для этого нужно поставить «галочку» для параметра «Запретить взятие при тревоге в шлейфе с задержкой на выход», который находится на вкладке «Разное», в разделе «Взятие и снятие».
