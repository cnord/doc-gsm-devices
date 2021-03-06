## Настройка удалённого доступа

Удалённый доступ к прибору возможен только в случае, если на пульте, к которому подключен прибор, установлено совместимое программное обеспечение, например, «Центр охраны». Чтобы воспользоваться функцией удалённого доступа к прибору, необходимо:

1. Создать инженера в пультовом ПО

2. Выдать инженеру права на удалённый доступ к определенным объектам

### Создание инженера

Для того чтобы создать учетную запись для инженера в программном обеспечении «Центр охраны», необходимо запустить модуль «Менеджер персонала» и нажать на кнопку «Создать» на вкладке «Инженеры»:

\imgcapt{img/sc-eng-list-1.png}{}

В открывшемся окне необходимо заполнить все поля с информацией об инженере:

\imgcapt{img/sc-eng-list-2.png}{}


Особо внимательно следует указывать значение для поля «Электронная почта». Именно на адрес электронной почты, указанный в этом поле, будет отправлено письмо со ссылкой, по которой инженеру необходимо будет перейти для завершения регистрации учётной записи в «Облаке». Электронная почта инженера служит для его идентификации в «Облаке». После того как инженер будет создан, изменить значение этого поля нельзя.

Если инженер, для которого создается учетная запись, должен иметь возможность удалённо обновлять программное обеспечение на приборах, которые установлены на объектах, необходимо установить галочку «Разрешить инженеру удаленно обновлять программное обеспечение на объектовых приборах». *Данная настройка доступна в «Центре охраны» версии 5 и выше.*

**Важно:** разрешение инженера на обновление программного обеспечения распространяется на все объекты охранного предприятия с функцией удалённого обновления «прошивки».

Для того чтобы изменения вступили в силу, нужно на вкладке «Инженеры» нажать на кнопку «Сохранить». После этого информация об инженерах и их праве обновлять приборы синхронизируется с «Облаком».

### Выдача разрешений инженеру

Для того чтобы в ПО «Центр охраны» предоставить инженеру разрешение на удалённый доступ к оборудованию, установленному на объекте, необходимо выполнить следующие действия:

1. Запустить модуль «Менеджер объектов»

2. Выбрать объект, к которому необходимо разрешить удалённый доступ

3. Перейти на вкладку «Обслуживание»

4. Нажать на кнопку «Добавить разрешение»
   
\imgcapt{img/sc-eng-perm-1.png}{}

5. В появившемся окне выбрать инженера, которому необходимо предоставить удалённый доступ к объекту 
   
\imgcapt{img/sc-eng-perm-2.png}{}

6. Указать временной интервал, в течение которого будет действовать разрешение.
   
7. Нажать на кнопку «Выдать разрешение».

