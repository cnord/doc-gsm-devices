## Подключение прибора к компьютеру {#firmware-driver}

На компьютере, к которому подключается прибор, должна быть установлена операционная система семейства Windows (XP/7/8/10). Разрядность операционной системы (32 или 64 бита) значения не имеет.

> Перед тем, как подключать прибор к компьютеру, *настоятельно рекомендуется* подать на него основное или резервное питание. Если прибор будет запитан *только* по USB, то его работа может быть нестабильной.

Прежде чем приступить к работе с прибором, необходимо установить драйвер. Прибор подключается к компьютеру с помощью кабеля USB-Mini, а драйвер – это специальное программное обеспечение, которое позволяет программам, с которыми взаимодействует пользователь, обмениваться данными с прибором.

Для всех операционных систем поставляется один и тот же драйвер.

## Установка драйвера в Windows XP и Windows 7

При первом подключении прибора к компьютеру в системной области панели задач появится уведомление о том, что найдено новое оборудование.
Установку драйвера можно оуществить через Диспетчер устройств. Для этого нужно войти в меню «Пуск», щелкнуть правой кнопкой мыши на пункт «Компьютер» и выбрать Управление, затем в меню слева выбрать «Диспетчер устройств».

\imgcapt{img/05-02-driver-02.png}{}

\imgcapt{img/05-02-driver-03.png}{}

Необходимо щелкнуть правой кнопкой мыши по устройству Souz CDC и выбрать пункт меню «Обновить драйверы».

\imgcapt{img/05-02-driver-04.png}{}

Нужно отказаться от предложения автоматически найти драйвер для нового оборудования, выбрать установку драйвера вручную.

\imgcapt{img/05-02-driver-05.png}{Выбор установки вручную}

Указать путь к папке **Driver** и нажать Далее.

\imgcapt{img/05-02-driver-06.png}{Выбор места поиска драйвера}

Драйвер для прибора «Норд GSM» не имеет цифровой подписи. Поэтому необходимо явно подтвердить операционной системе необходимость его установки.

\imgcapt{img/05-02-driver-07.png}{Подтверждение установки драйвера без цифровой подписи}

После завершения установки драйвера необходимо нажать на кнопку «Закрыть».

\imgcapt{img/05-02-driver-08.png}{Завершение установки драйвера}

Для того чтобы убедиться в том, что драйвер для устройства установлен, можно открыть диспетчер устройств Windows и найти виртуальный последовательный порт, который соответствует прибору, подключенному к компьютеру.

\imgcapt{img/05-02-driver-09.png}{Последовательный порт прибора в «Диспетчере устройств»}


## Установка драйвера в Windows 8

Операционная система Windows 8 не позволяет устанавливать драйвера без цифровой подписи так, как это было возможно в предыдущих версиях. Поэтому, прежде чем приступить к установке драйвера для прибора в этой операционной системе, необходимо загрузить её в специальном режиме – с  отключенной обязательной проверкой подписи драйверов.

Для того чтобы загрузить операционную систему Windows 8 с отключенной проверкой подписи драйверов, необходимо выполнить следующую последовательность действий.

Нажать комбинацию клавиш **Win+I**, после чего, удерживая кнопку **Shift** выбрать пункт «**Выключение**» – «**Перезагрузка**»:

\imgcapt{img/05-02-driver-10.png}{Перезагрузка для изменения параметров загрузки}

После того как операционная система перезагрузится, появится окно параметров запуска. Необходимо выбрать пункт «**Диагностика**»:

\imgcapt{img/05-02-driver-11.png}{Вход в режим диагностики}

В окне «**Диагностика**» необходимо выбрать пункт «**Дополнительные параметры**»:

\imgcapt{img/05-02-driver-12.png}{Дополнительные параметры диагностики}

В окне «**Дополнительные параметры**» нужно выбрать пункт «**Параметры загрузки**»:

\imgcapt{img/05-02-driver-13.png}{Параметры загрузки операционной системы}

В окне «**Параметры загрузки**» нужно щелкнуть левой кнопкой мыши по кнопке «**Перезагрузить**»:

\imgcapt{img/05-02-driver-14.png}{Перезагрузка}

Операционная система перезагрузится еще раз, после чего появится окно «**Параметры загрузки**». В этом окне необходимо нажать на кнопку F7, чтобы продолжить загрузку операционной системы с отключенной проверкой подписи драйверов:

\imgcapt{img/05-02-driver-15.png}{Отключение обязательно проверки подписи драйверов}

После того как операционная система загрузится, нужно установить драйвер прибора так же, как и в операционных системах Windows XP / Windows 7. После установки драйвера необходимо еще раз перезагрузить компьютер, для того чтобы включить проверку подписи драйверов.

