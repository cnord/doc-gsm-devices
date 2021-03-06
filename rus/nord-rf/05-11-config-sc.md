### Вкладка «Центр охраны» {#config-sc}

На вкладке «Центр охраны» можно указать параметры, которые будет использовать прибор при передаче событий на пульт охраны по каналам GSM и Ethetnet.

**Раздел «Идентификация»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-01.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Идентификация»}
\end{minipage}

В разделе «Индентификация» можно указать номер объекта, который будет использоваться при передаче событий с прибора. 

> Поскольку передача событий с прибора в программное обеспечение «Центр охраны» выполняется в протоколе, который является информационным эквивалентом протокола Ademco ContactID, то каждое событие, если это возможно, содержит информацию о номере раздела, в котором оно произошло, а также о номере шлейфа, который вызвал формирование события, либо о номере пользователя, который выполнил взятие или снятие раздела. Таким образом, при передаче по GSM или Ethernet одного номера объекта достаточно, чтобы передавать любые событие с прибора без потери информативность.

В разделе «Идентификация», в поле «Идентификатор устройства» также отображается уникальный восьмизначный серийный номер, который устройство получает при производстве. Этот серийный номер может передаваться на пульт охраны и служить в качестве альтернативы номеру объекта при идентификации прибора. Для включения этой возможности служит параметр «Передавать идентификатор устройства в пультовую программу». В программном обеспечении «Центр охраны» версии 5 эта возможность не реализована: если передача серийного номера в пультовую программу включена, то серийный номер будет просто отображаться в карточке объекта на вкладке «Оборудование».

> Если в качестве пультового программного обеспечения используется «Центр охраны» версии 4, то включать передачу серийного номера в пультовую программу нельзя: прибор не сможет подключиться к «Центру охраны». 

Для того, чтобы события с прибора правильно интерпретировали программным обеспечением «Центр охраны», необходимо соблюдение следующих условий:

* номер объекта, заданный при настройке прибора, должен совпадать с номером объекта, созданным для прибора в программном обеспечении «Центр охраны»;
* в модуле «Менеджер объектов», на вкладке «Оборудование» для этого объекта должно быть указано значение «Си-Норд GSM (CML)»;
* перед первым подключением прибора к программному обеспечению «Центр охраны» необходимо убедиться в том, что значение в поле «Идентификатор» на вкладке «Оборудование» не задано.

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=\textwidth]{img/05-11-config-common-02.png}
 	}
	\captionof*{figure}{Модуль «Менеджер объектов», вкладка «Оборудование»}
\end{minipage}

**Раздел «Передача по TCP/IP (GPRS)»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-03.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Передача по TCP/IP (GPRS)»}
\end{minipage}

В разделе «Передача по TCP/IP (GPRS)» можно задать до двух пар «адрес:порт», которые будут использоваться прибором при подключении к пульту охраны по каналу GSM/GPRS.

> В качестве значения для полей «Адрес 1» и «Адрес 2» можно указать как IP-адрес, так и DNS-имя. 

При инициализации подключения по GPRS, прибор сначала пытается выполнить подключение к серверу с параметрами «Адрес 1:Порт 1». Если подключение установить не удастся, то будет выполнена попытка подключения к серверу с параметрами «Адрес 2:Порт 2». При этом обе пары «адрес:порт» воспринимаются приборами, как равнозначные: отличия между ними заключаются только в том, какая пара будет использоваться для инициализации подключения первой. Если прибор подключится к пульту охраны с использованием пары «Адрес 2:Порт 2», то это подключение не будет считаться подключением по резервному каналу и будет закрыто только в том случае, если связь с пультом охраны с использованием этого подключения будет потеряна.

Обе пары «адрес:порт» действительны для обеих SIM, установленных в приборе: вне зависимости от того, какая из SIM в настоящий момент является активной, прибор сначала выполнит попытку подключения к пульту охраны с параметрами «Адрес 1:Порт 1», и только если эта попытка будет неудачной – попытку подключения с параметрами «Адрес 2:Порт 2».

При наличии на пульте охраны только одного адреса для подключения приборов по TCP/IP, то при конфигурировании прибора значения для параметров «Адрес 2:Порт 2» следует оставить пустыми.

Если к прибору не подключен опциональный модуль «Адаптер Ethernet», то канал GSM/GPRS на SIM1 считается *основным* для прибора.

***Прием событий в «Центре охраны»***

Для приема событий от прибора по каналам TCP/IP (GSM/GPRS и Ethernet) в программном обеспечении «Центр охраны» необходимо использовать источник событий «Си-Норд GSM (CML)». Добавить этот источник событий или изменить его параметры можно в модуле «Менеджер событий». 

Для того, чтобы открыть окно настроек службы источников событий нужно выбрать пункт «Источники событий (службы)...» в контекстном меню, которое появляется при щелчке левой правой кнопки мыши по иконке модуля в системной области панели задач.

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.4\textwidth]{img/05-11-config-common-04.png}
 	}
	\captionof*{figure}{Контекстное меню модуля «Менеджера событий»}
\end{minipage}

Для того, чтобы добавить источник событий «Си-Норд GSM (CML)» в службу источников событий, нужно нажать на кнопку «Добавить» и выбрать пункт, соответствующий источник, в появившемся меню.

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.4\textwidth]{img/05-11-config-common-05.png}
 	}
	\captionof*{figure}{Меню окна настроек службы источников событий}
\end{minipage}

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-06.png}
 	}
	\captionof*{figure}{Окно настроек источника событий «Си-Норд GSM (CML)»}
\end{minipage}

Подробнее о назначении параметров источника событий «Си-Норд GSM (CML)» можно прочитать в документации на программное обеспечение «Центр охраны».

***IP-адрес или DNS-имя?***

В качестве адреса сервера рекомендуется указывать DNS-имя, а не IP-адрес и вот почему. Выделенный IP-адрес, как правило, принадлежит конкретному оператору связи, который предоставляет доступ в интернет и не может быть перенесен на подключение, которое предоставляет *другой* оператор связи. Что же касается DNS-имени, то оно принадлежит той организации, которая его зарегистрировала, например – охранному предприятию. Кроме того, соответствие DNS-имени и IP-адреса также задает охранное предприятие. 

Что произойдет, если по каким-то причинам придется расторгнуть договор с оператором связи, который предоставляет охранному предприятию доступ в интернет? Если в качестве адреса для подключения к пульту охраны указано DNS-имя, то достаточно будет исправить одну запись, которая задает соответствие DNS-имени и IP-адреса. Если же указан IP-адрес, то придется организовать выезд на каждый объект и изменить значение адреса.

Исходя из изложенного *настоятельно рекомендуется* использовать именно DNS-имя, а не IP-адрес.

**Раздел «Передача по TCP/IP (Ethernet)»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-07.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Передача по TCP/IP (Ethernet)»}
\end{minipage}

В разделе «Передача по TCP/IP (Ethernet)», так же, как и в предыдущем разделе можно задать две пары «адрес:порт», которые будут использоваться прибором при подключении к пульту охраны по каналу Ethernet. Все комментарии, которые даны в отношении пар «адрес:порт» в описании раздела «Передача по TCP/IP (GPRS)» распространяются и на параметры в разделе «Передача по TCP/IP (Ethernet)».

> В общем случае значения параметров «адрес:порт» должны быть одинаковыми для обоих разделов. Тем не менее, в некоторых случаях эти значения могут быть разными. Например, если для канала GSM/GPRS используется защищенное VPN-подключение, предоставленное оператором сотовой связи, то адреса для подключения по GSM/GPRS и Ethernet могут быть разными, так как подключение по Ethernet будет выполняться через публичную сеть. Но даже и в этом случае можно организовать подключение по каналу GSM/GPRS таким образом, чтобы в качестве адреса пульта использовалось DNS-имя, а не IP-адрес.

Если к прибору подключен опциональный модуль «Адаптер Ethernet», то канал Ethernet считается *основным* для прибора.

Раздел «Передача по TCP/IP (Ethernet)» отображается в конфигураторе только в том случае, если к прибору подключен опциональный модуль «Адаптер Ethernet».

**Раздел «Передача в CSD-канале GSM»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-08.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Передача в CSD-канале GSM»}
\end{minipage}

В разделе «Передача в CSD-канале GSM» можно указать номера телефонов, которые будут использоваться для дозвона на пульт охраны при передаче событий в CSD-канале GSM.

В отличии от каналов GSM/GPRS и  Ethernet, номера телефонов для передачи в канале CSD задаются отдельно для каждой SIM. Связано это с тем, что стоимость услуги передачи по CSD внутри сети оператора связи может быть существенно дешевле. 

При передаче в канале CSD прибор сначала выполняет дозвон по первому номеру, указанному для активной в настоящий момент SIM, а если передача события не удалась, то по второму. Если на пульте охраны установлен только один модем для приема событий по каналу CSD, то второй номер телефона следует оставить пустым.

Канал CSD считается активным, если задан хотя бы один номер телефона. Если прибор не должен использовать канал CSD для передачи событий, то оба телефонных номера должны быть пустыми.

***Прием событий в «Центре охраны»***

Для приема событий от прибора по каналу CSD в программном обеспечении «Центр охраны» необходимо использовать «Источник событий по GSM». Добавить этот источник событий или изменить его параметры можно в модуле «Менеджер событий». 

В качестве оборудования для приема событий по каналу CSD может использоваться любой GSM-модем, система команд которого совместима с модемом Siemens MC35.


**Раздел «Передача в голосовом канале GSM»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-09.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Передача в голосовом канале GSM»}
\end{minipage}

В разделе «Передача в голосовом канале GSM» можно указать номера телефонов, которые будут использоваться для дозвона на пульт охраны при передаче событий в голосовом канале GSM. Передача в голосом канале осуществляется с помощью аналоговых сигналов DTMF, в качестве информационного протокола используется Ademco Contact ID.

Номера телефонов для передачи в голосовом канале задаются отдельно для каждой SIM, так как голосовой звонок внутри сети оператора связи может быть дешевле. 

При передаче в голосовом канале прибор сначала выполняет дозвон по первому номеру, указанному для активной в настоящий момент SIM, а если передача события не удалась, то по второму. Если на пульте охраны есть только один номер для голосового дозвона, то второй номер телефона следует оставить пустым.

Голосовой канал GSM считается активным, если задан хотя бы один номер телефона. Если прибор не должен использовать голосовой канал для передачи событий, то оба телефонных номера должны быть пустыми.

***Прием событий в «Центре охраны»***

Для приема событий от прибора в голосовом канале GSM необходимо использовать специально предназначенное для этого пультовое оборудование. В качестве примера такого оборудования можно привести процессор центральной станции "Sentinel" производства компании "Pima Electronics" или процессоры центральной станции "SG System III" / "SG System IV" производства компании "DSC".

**Раздел «Передача по SMS»**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/05-11-config-common-10.png}
 	}
	\captionof*{figure}{Вкладка «Центр охраны», раздел «Передача по SMS»}
\end{minipage}

В разделе «Передача по SMS» можно указать номера телефонов, которые будут использоваться для передачи событий на пульт охраны с помощью канала SMS. 

При передаче по каналу SMS прибор использует протокол, позволяющий в одном SMS-сообщении передать до 5 событий.

Номер телефона для передачи по каналу SMS задается отдельно для каждой SIM, так как отправка SMS внутри сети оператора связи может быть дешевле.

Канал SMS считается активным, если для него задан номер телефона. Если прибор не должен использовать канал SMS для передачи событий, то телефонный номер должен быть пуст.

***Прием событий в «Центре охраны»***

Для приема событий от прибора по каналу SMS в программном обеспечении «Центр охраны» необходимо использовать «Источник событий по GSM». Добавить этот источник событий или изменить его параметры можно в модуле «Менеджер событий». 

В качестве оборудования для приема событий по каналу SMS может использоваться любой GSM-модем, система команд которого совместима с модемом Siemens MC35.
