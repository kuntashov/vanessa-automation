# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Остановить выполнение сценария
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Выполнить всю фичу

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ОстановитьВыполнениеСценария/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И я устанавливаю флаг с именем 'ВыполнятьШагиАссинхронно'
	И в поле с именем 'ИнтервалВыполненияШагаЗаданныйПользователем' я ввожу текст '1,00'
	И я перехожу к следующему реквизиту

	И я нажимаю на кнопку с именем 'ВыполнитьСценарии'
	И пауза 5
	И я нажимаю на кнопку с именем 'ОстановитьСценарии'
	
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      | 'Статус'  |
		| 'И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"' | ''        |
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      | 'Статус'  |
		| 'И Я запоминаю значение выражения '3' в переменную "ИмяПеременной"' | ''        |

