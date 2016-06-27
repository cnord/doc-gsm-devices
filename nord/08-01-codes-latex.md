\pagebreak

# Коды событий {#codes-table}


\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{clX}
\textbf{Код} & \textbf{Код EPAF} & \textbf{Событие} & \textbf{Примечание} \\ \midrule

E110 & SY & Пожар & Пожарная тревога. \\ \arrayrulecolor{light-gray}\hline
E118 & SY & Предупреждение & Опасность пожара. \\ \arrayrulecolor{light-gray}\hline
E120 & SX & Тревога & Тревожная кнопка.  \\ \arrayrulecolor{light-gray}\hline 
E121 & RP & Тревога & Снятие под принуждением.  \\ \arrayrulecolor{light-gray}\hline 
E130 & AA..DR & Тревога & Охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
E133 & AA..DR & Тревога & 24-часовой охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
E137 & RS & Тревога & Корпус прибора открыт (тампер). \\ \arrayrulecolor{light-gray}\hline
E138 & SQ & Предупреждение & Вероятная тревога. \\ \arrayrulecolor{light-gray}\hline
E141 & AA..DR & Тревога & Обрыв шлейфа, взятого под охрану. \\ \arrayrulecolor{light-gray}\hline
E142 & AA..DR & Тревога & Короткое замыкание шлейфа, взятого под охрану. \\ \arrayrulecolor{light-gray}\hline
E144 & AA..DR & Тревога & Корпус датчика открыт (тампер). \\ \arrayrulecolor{light-gray}\hline
E146 & AA..DR & Тревога & Охранный шлейф без сирены (тихая тревога). \\ \arrayrulecolor{light-gray}\hline
E150 & AA..DR & Тревога & 24-часовой не охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
E151 & AA..DR & Тревога & Утечка газа. \\ \arrayrulecolor{light-gray}\hline
E154 & AA..DR & Тревога & Протечка воды. \\ \arrayrulecolor{light-gray}\hline
E301 & RU & Неисправность & Отключение 220 В. \\ \arrayrulecolor{light-gray}\hline
E302 & RW & Неисправность & АКБ разряжена. \\ \arrayrulecolor{light-gray}\hline
E306 & -- & Система & Настройки прибора изменены. \\ \arrayrulecolor{light-gray}\hline
E309 & RW & Неисправность & АКБ неисправна. \\ \arrayrulecolor{light-gray}\hline
E311 & RW & Неисправность & АКБ отключена. \\ \arrayrulecolor{light-gray}\hline
E314 & HK..LB & Неисправность & Неисправность батареи беспроводного датчика или питания пожарного шлейфа, подключенного через ППШ-2. \\ \arrayrulecolor{light-gray}\hline
E321 & SC & Неисправность & Сирена неисправна. \\ \arrayrulecolor{light-gray}\hline
E331 & HK..LB & Неисправность & Обрыв шлейфа. \\ \arrayrulecolor{light-gray}\hline
E332 & HK..LB & Неисправность & Короткое замыкание шлейфа. \\ \arrayrulecolor{light-gray}\hline
E381 & HK..LB & Неисправность & Связь с беспроводным устройством потеряна. \\ \arrayrulecolor{light-gray}\hline
E384 & HK..LB & Неисправность & Неисправность резервной батареи беспроводного датчика. \\ \arrayrulecolor{light-gray}\hline
E401 & QT..23 & Снятие & Снятие кодом пользователя. \\ \arrayrulecolor{light-gray}\hline
E403 & QT..23 & Снятие & Автоматическое снятие. \\ \arrayrulecolor{light-gray}\hline
E461 & SL & Предупреждение & Подбор кода пользователем. \\ \arrayrulecolor{light-gray}\hline
E469 & -- & Снятие & Cнятие раздела, который был под охраной, но при конфигурировании был удален из настроек прибора. \\ \arrayrulecolor{light-gray}\hline
E470 & TA & Отказ от взятия & Вслед за этим сообщением передается причина отказа от взятия (коды E471 – E476). \\ \arrayrulecolor{light-gray}\hline
E471 & -- & Отказ от взятия & Не оплачены услуги охраны. \\ \arrayrulecolor{light-gray}\hline
E472 & RU & Отказ от взятия & Отсутствие 220 В. \\ \arrayrulecolor{light-gray}\hline
E473 & 74 & Отказ от взятия & Отсутствие IP-связи с пультом охраны. \\ \arrayrulecolor{light-gray}\hline
E474 & -- & Отказ от взятия & Неисправность в шлейфе, который входит в раздел, который берется под охрану. \\ \arrayrulecolor{light-gray}\hline
E475 & -- & Отказ от взятия & Тревога в шлейфе, который входит в раздел, который берется под охрану. \\ \arrayrulecolor{light-gray}\hline
E476 & RS & Отказ от взятия & Корпус прибора открыт. \\ \arrayrulecolor{light-gray}\hline
E499 & QT..23 & Снятие & Снятие с пульта охраны. \\ \arrayrulecolor{light-gray}\hline
E521 & -- & Система & Сирена выключена в настройках. \\ \arrayrulecolor{light-gray}\hline
E601 & SM & Тест & Пользовательский тест. Событие формируется при переключении каналов при нажатии кнопки на Норде. \\ \arrayrulecolor{light-gray}\hline
E602 & SN & Тест & Автотест. \\ \arrayrulecolor{light-gray}\hline
E627 & -- & Система & Включен режим программирования по USB. \\ \arrayrulecolor{light-gray}\hline
E628 & -- & Система & Выключен режим программирования по USB. \\ \arrayrulecolor{light-gray}\hline
E750 & -- & Система & Неверный пароль при подключении по USB. \\ \arrayrulecolor{light-gray}\hline
E751 & -- & Система & Дискретный выход замкнут. \\ \arrayrulecolor{light-gray}\hline
E752 & -- & Система & Запущен сброс значений параметров  в заводские. \\ \arrayrulecolor{light-gray}\hline
E754 & -- & Система & Переключение канала по команде системы аудита. \\ \arrayrulecolor{light-gray}\hline
E756 & 56 & Неисправность & Неисправность клавиатуры. \\ \arrayrulecolor{light-gray}\hline
E757 & 57 & Неисправность & Неисправность блока выносной индикации "Пожар". \\ \arrayrulecolor{light-gray}\hline
E758 & 58 & Неисправность & Неисправность БРШС. \\ \arrayrulecolor{light-gray}\hline
R110 & DS..HJ & Сброс & Пожарная тревога. \\ \arrayrulecolor{light-gray}\hline
R118 & DS..HJ & Сброс & Опасность пожара. \\ \arrayrulecolor{light-gray}\hline
R120 & DS..HJ & Сброс & Тревожная кнопка. \\ \arrayrulecolor{light-gray}\hline
R130 & DS..HJ & Сброс & Охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
R133 & DS..HJ & Сброс & 24-часовой охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
R137 & RT & Сброс & Корпус прибора закрыт (тампер).  \\ \arrayrulecolor{light-gray}\hline
R141 & DS..HJ & Сброс & Норма шлейфа после обрыва (под охраной). \\ \arrayrulecolor{light-gray}\hline
R142 & DS..HJ & Сброс & Норма шлейфа после короткого замыкания (под охраной). \\ \arrayrulecolor{light-gray}\hline
R144 & DS..HJ & Сброс & Корпус датчика закрыт (тампер). \\ \arrayrulecolor{light-gray}\hline
R146 & DS..HJ & Сброс & Охранный шлейф без сирены (тихая тревога). \\ \arrayrulecolor{light-gray}\hline
R150 & DS..HJ & Сброс & 24-часовой не охранный шлейф. \\ \arrayrulecolor{light-gray}\hline
R151 & DS..HJ & Сброс & Утечка газа. \\ \arrayrulecolor{light-gray}\hline
R154 & DS..HJ & Сброс & Протечка воды. \\ \arrayrulecolor{light-gray}\hline
R301 & RV & Восстановление & 220В восстановлены. \\ \arrayrulecolor{light-gray}\hline
R302 & RX & Восстановление & АКБ заряжена. \\ \arrayrulecolor{light-gray}\hline
R305 & RR & Система & Перезапуск прибора. \\ \arrayrulecolor{light-gray}\hline
R309 & RX & Восстановление & АКБ исправна. \\ \arrayrulecolor{light-gray}\hline
R311 & RX & Восстановление & АКБ подключена. \\ \arrayrulecolor{light-gray}\hline
R314 & DS..HJ & Восстановление & Основная батарея датчика подключена. \\ \arrayrulecolor{light-gray}\hline
R321 & SD & Восстановление & Сирена исправна. \\ \arrayrulecolor{light-gray}\hline
R331 & DS..HJ & Восстановление & Норма шлейфа после обрыва. \\ \arrayrulecolor{light-gray}\hline
R332 & DS..HJ & Восстановление & Норма шлейфа после короткого замыкания. \\ \arrayrulecolor{light-gray}\hline
R381 & DS..HJ & Восстановление & Связь с беспроводным устройством восстановлена. \\ \arrayrulecolor{light-gray}\hline
R384 & DS..HJ & Восстановление & Резервная батарея датчика подключена. \\ \arrayrulecolor{light-gray}\hline
R401 & OV..WX & Взятие & Взятие кодом пользователья. \\ \arrayrulecolor{light-gray}\hline
R403 & PR & Взятие & Автоматическое взятие. \\ \arrayrulecolor{light-gray}\hline
R499 & OV..WX & RR & Взятие & Взятие с пульта охраны. \\ \arrayrulecolor{light-gray}\hline
R521 & -- & Система & Сирена включена в настройках прибора. \\ \arrayrulecolor{light-gray}\hline
R751 & -- & Система & Дискретный выход разомкнут. \\ \arrayrulecolor{light-gray}\hline
R752 & -- & Система & Отменен сброс значений параметров. \\ \arrayrulecolor{light-gray}\hline
R753 & -- & Система & Перезапуск по неизвестной причине. \\ \arrayrulecolor{light-gray}\hline
R754 & -- & Система & Перезапуск по команде системы аудита. \\ \arrayrulecolor{light-gray}\hline
R755 & -- & Система & Дискретный выход замыкается-размыкается. \\ \arrayrulecolor{light-gray}\hline
R756 & 64 & Восстановление & Восстановление неисправности клавиатуры. \\ \arrayrulecolor{light-gray}\hline
R757 & 65 & Восстановление & Восстановление блока выносной индикации "Пожар". \\ \arrayrulecolor{light-gray}\hline
R758 & 66 & Восстановление & Восстановление БРШС. \\ \arrayrulecolor{light-gray}\hline
R903 & -- & Система & Прошивка устройства обновлена. \\ \arrayrulecolor{light-gray}\hline
\bottomrule
\end{tabularx}