\pagebreak

# Таблица кодов событий (ContactID) {#codes-table}


\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{clX}
\textbf{Код} & \textbf{Класс} & \textbf{Примечание} \\ \midrule

E110 & Пожар & Пожарные шлейфы. \\ \arrayrulecolor{light-gray}\hline
E120 & Тревожная кнопка & ТК \\ \arrayrulecolor{light-gray}\hline 
E130 & Тревога & Охранные шлейфы. \\ \arrayrulecolor{light-gray}\hline
E133 & Тревога & 24-часовой охранный. \\ \arrayrulecolor{light-gray}\hline
E137 & Тревога & Корпус прибора открыт \\ \arrayrulecolor{light-gray}\hline
E141 & Неисправность & Обрыв шлейфа под охраной. \\ \arrayrulecolor{light-gray}\hline
E142 & Неисправность & Шлейф закорочен. В случае, если раздел под охраной. \\ \arrayrulecolor{light-gray}\hline
E144 & Тревога & Вскрыт тампер датчика. \\ \arrayrulecolor{light-gray}\hline
E146 & Тревога & Охранный шлейф без сирены (тихая тревога). \\ \arrayrulecolor{light-gray}\hline
E150 & Тревога & Круглосуточный 24-часовой шлейф. \\ \arrayrulecolor{light-gray}\hline
E151 & Тревога & Утечка газа. \\ \arrayrulecolor{light-gray}\hline
E154 & Тревога & Протечка воды. \\ \arrayrulecolor{light-gray}\hline
E300 & Неисправность & \\ \arrayrulecolor{light-gray}\hline
E301 & Неисправность & Отключение 220В \\ \arrayrulecolor{light-gray}\hline
E302 & Неисправность & АКБ разряжена \\ \arrayrulecolor{light-gray}\hline
E305 & Другое & Включение прибора \\ \arrayrulecolor{light-gray}\hline
E309 & Неисправность & АКБ неисправна \\ \arrayrulecolor{light-gray}\hline
E311 & Неисправность & АКБ отключена. Код оповещает об отключении резерва по питанию как для прибора, так и для отдельных датчиков. \\ \arrayrulecolor{light-gray}\hline
E312 & Неисправность & Перегрузка по питанию \\ \arrayrulecolor{light-gray}\hline
E314 & Неисправность & Основная батарея датчика отключена или неисправна \\ \arrayrulecolor{light-gray}\hline
E321 & Неисправность & Сирена неисправна \\ \arrayrulecolor{light-gray}\hline
E331 & Неисправность & Шлейф открыт. В случае, если раздел не под охраной. \\ \arrayrulecolor{light-gray}\hline
E332 & Неисправность & Шлейф закорочен. В случае, если раздел не под охраной. \\ \arrayrulecolor{light-gray}\hline
E350 & Неисправность & Ошибка подключения по GPRS. В номере раздела идёт цифра, соответствующая проблемной SIM. \\ \arrayrulecolor{light-gray}\hline
E380 & Неисправность & Потеря связи с беспроводным шлейфом \\ \arrayrulecolor{light-gray}\hline
E381 & Неисправность & Нет связи с датчиком. Датчик не выходил на связь в течение N*T секунд, где N — допустимое количество пропущенных сеансов связи, T — интервал выхода датчика на связь. \\ \arrayrulecolor{light-gray}\hline
E395 & Неисправность & Низкий уровень сигнала датчика. \\ \arrayrulecolor{light-gray}\hline
E400 & Снятие &  \\ \arrayrulecolor{light-gray}\hline
E401 & Снятие & Снятие (пользователь) \\ \arrayrulecolor{light-gray}\hline
E402 & Снятие & Снятие (группа) \\ \arrayrulecolor{light-gray}\hline
E469 & Снятие & Cнятие раздела, который был под охраной, но при последнем конфигурировании был удален в настройках прибора. \\ \arrayrulecolor{light-gray}\hline
E470 & Другое & Отказ от взятия. Код приходит вместе с одним из E471-E476. \\ \arrayrulecolor{light-gray}\hline
E471 & Другое & Отказ от взятия. Не оплачены услуги охраны. \\ \arrayrulecolor{light-gray}\hline
E472 & Другое & Отказ от взятия. Отсутствие 220В. \\ \arrayrulecolor{light-gray}\hline
E473 & Другое & Отказ от взятия. Отсутствие IP-связи с Центром охраны. \\ \arrayrulecolor{light-gray}\hline
E474 & Другое & Отказ от взятия. Неисправность в шлейфе. \\ \arrayrulecolor{light-gray}\hline
E475 & Другое & Отказ от взятия. Тревога в шлейфе. \\ \arrayrulecolor{light-gray}\hline
E476 & Другое & Отказ от взятия. Датчик вскрытия. \\ \arrayrulecolor{light-gray}\hline
E521 & Система & Сирена выключена в настройках. \\ \arrayrulecolor{light-gray}\hline
E608 & Ошибка самодиагностики. \\ \arrayrulecolor{light-gray}\hline
E704 & Предупреждение & Диагностика прибора начата \\ \arrayrulecolor{light-gray}\hline
R110 & Сброс & Пожарные шлейфы. \\ \arrayrulecolor{light-gray}\hline
R120 & Сброс & ТК \\ \arrayrulecolor{light-gray}\hline
R130 & Сброс & Охранные шлейфы. \\ \arrayrulecolor{light-gray}\hline
R133 & Сброс & 24-часовой охранный. \\ \arrayrulecolor{light-gray}\hline
R137 & Сброс & Корпус прибора  \\ \arrayrulecolor{light-gray}\hline
R141 & Сброс & Восстановление после обрыва шлейфа под охраной. \\ \arrayrulecolor{light-gray}\hline
R142 & Сброс & Шлейф закорочен. В случае, если раздел под охраной. \\ \arrayrulecolor{light-gray}\hline
R144 & Сброс & Тампер датчика. \\ \arrayrulecolor{light-gray}\hline
R146 & Сброс & Охранный шлейф без сирены (тихая тревога). \\ \arrayrulecolor{light-gray}\hline
R150 & Сброс & Круглосуточный 24-часовой шлейф. \\ \arrayrulecolor{light-gray}\hline
E151 & Сброс & Утечка газа. \\ \arrayrulecolor{light-gray}\hline
E154 & Сброс & Протечка воды. \\ \arrayrulecolor{light-gray}\hline
R300 & Восстановление & \\ \arrayrulecolor{light-gray}\hline
R301 & Восстановление & Восстановление 220В. \\ \arrayrulecolor{light-gray}\hline
R302 & Восстановление & АКБ заряжен. \\ \arrayrulecolor{light-gray}\hline
R305 & Переустановка & Перезапуск системы \\ \arrayrulecolor{light-gray}\hline
R309 & Восстановление & АКБ исправен \\ \arrayrulecolor{light-gray}\hline
R311 & Переустановка & АКБ подключен. Код оповещает об появлении резерва по питанию как для прибора, так и для отдельных датчиков. \\ \arrayrulecolor{light-gray}\hline
R314 & Переустановка & Основная батарея датчика подключена \\ \arrayrulecolor{light-gray}\hline
R321 & Восстановление & Сирена исправна \\ \arrayrulecolor{light-gray}\hline
R331 & Переустановка & Шлейф открыт. В случае, если раздел не под охраной. \\ \arrayrulecolor{light-gray}\hline
R332 & Переустановка & Шлейф закорочен. В случае, если раздел не под охраной. \\ \arrayrulecolor{light-gray}\hline
R350 & Переустановка & Связь по GPRS восстановлена. Значение в разделе — номер SIM. Значение в шлейфе — количество попыток. \\ \arrayrulecolor{light-gray}\hline
R380 & Восстановление & Восстановление связи с беспроводным шлейфом \\ \arrayrulecolor{light-gray}\hline
R381 & Восстановление & Связь с беспроводным датчиком восстановлена после потери. \\ \arrayrulecolor{light-gray}\hline
R395 & Восстановление & Уровень сигнала датчика восстановлен. \\ \arrayrulecolor{light-gray}\hline
R400 & Взятие & \\ \arrayrulecolor{light-gray}\hline
R401 & Взятие & Взятие (пользователь) \\ \arrayrulecolor{light-gray}\hline
R402 & Взятие & Взятие (группа) \\ \arrayrulecolor{light-gray}\hline
R521 & Система & Сирена включена в настройках прибора \\ \arrayrulecolor{light-gray}\hline
R704 & Предупреждение & Диагностика прибора завершена \\
\bottomrule
\end{tabularx}