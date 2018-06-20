### Резервное питание

**Тип резервного источника питания**  

В пункте «Тип резервного источника питания» можно указать, какой резервный источник подключен к прибору: Аккумулятор или ИБП.

**Если подключена АКБ**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/06-07-config-nord-03-01.png}
 	}
	\captionof{figure}{Вкладка «Разное», раздел «Резервное питание»}
\end{minipage}

Если в качестве резервного источника выбран аккумулятор, то есть возможность включить два параметра:

* *Защищать резервный источник от глубокого разряда.* 

Если этот параметр включен, то при достижении напряжения 8.5 В на клеммах АКБ прибор отключится, чтобы предотвратить возможность разряда аккумулятора до критически низкого уровня, при котором его заряд не может быть восстановлен. 

* *Проверять качество аккумулятора.* 

Для проверки качества аккумулятора прибор периодически подключает нагрузку и контролирует падение напряжения. В случае, если значение падения напряжения под нагрузкой превысило 2 В, формируется событие **E309** - *АКБ неисправна*.

**Если подключен ИБП**

\begin{minipage}{\linewidth}
	\makebox[\linewidth]{
 		\includegraphics[width=0.9\textwidth]{img/06-07-config-nord-03-02.png}
 	}
	\captionof{figure}{Вкладка «Разное», раздел «Резрвное питание», выбрано значение «ИБП» для параметра «Тип резервного источника питания».}
\end{minipage}

Если в качестве резервного источника выбран ИБП, то включение дополнительных параметров (защита от глубокого разряда и контроль качества АКБ) недоступно.