﻿# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA1_Работать_с_макетами_данных


@IgnoreOn82Builds
@IgnoreOnOFBuilds

#т.к. используется метод УстановитьРезультатДиалогаВыбораФайла
@IgnoreOn836
@IgnoreOn837

@tree




Функционал: Автоматизированное получение данных макетов

Как Разработчик я хочу
Чтобы у меня был функционал для получения данных макета из TestClient
Для того чтобы я мог использовать их в своих сценариях без программирования



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Дано Я задаю параметры чтения области макета "R1C1:R10C10"


Сценарий: Проверка редактирования табличного документа
	
	
	Когда я удаляю все элементы Справочника "Справочник3"
	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И В открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку 'Разрешить редактирование табличного документа'

	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R1C1"
	И в табличном документе 'РеквизитТабличныйДокумент' я делаю двойной клик на текущей ячейке
	И в табличный документ "РеквизитТабличныйДокумент" я ввожу текст '111'
	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R1C2"
	И я запоминаю адрес текущей ячейки "РеквизитТабличныйДокумент" в переменную "ТекАдрес"
	И переменная "ТекАдрес" имеет значение "R1C2" Тогда
	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R2C1"
	И в табличном документе 'РеквизитТабличныйДокумент' я делаю двойной клик на текущей ячейке
	И в табличный документ "РеквизитТабличныйДокумент" я ввожу текст '222'
	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R2C2"

	Тогда табличный документ "РеквизитТабличныйДокумент" равен:
		| '111' |
		| '222' |




	
Сценарий: Проверка проверки значения макета, когда макет формируется с задержкой. Проверка через макет.
	Если Версия платформы ">=" "8.3.13" Тогда
			Когда я удаляю все элементы Справочника "Справочник3"
			И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
			Тогда открылось окно 'Справочник3'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Справочник3 (создание)'
			И В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
			И В открытой форме я нажимаю на кнопку с заголовком "Записать"
			И я нажимаю на кнопку с именем 'СформироватьОтчетСЗадержкой'
			Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "МакетСЗадержкой"
	

	
	
Сценарий: Проверка проверки значения макета, когда макет формируется с задержкой. Проверка через таблицу Gherkin.
	Если Версия платформы ">=" "8.3.13" Тогда
			Когда я удаляю все элементы Справочника "Справочник3"
			И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
			Тогда открылось окно 'Справочник3'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Справочник3 (создание)'
			И В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
			И В открытой форме я нажимаю на кнопку с заголовком "Записать"
			И я нажимаю на кнопку с именем 'СформироватьОтчетСЗадержкой'
			Тогда табличный документ "РеквизитТабличныйДокумент" равен:
				| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
				| 'Тест'         | '*'                | '*'            | '*'                         | '*'             |



	
	
Сценарий: Проверка использования переменных при сравнении таблицы
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
	И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
	И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст '111'
	И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
	И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
	И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст '222'
	И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
	И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
	И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст '333'
	И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	
	И Я запоминаю значение выражения '"111"' в переменную "Строка111"
	И таблица "ТабличнаяЧасть1" равна макету "ПеременнаяВМакетеПриСравненииТаблицы"

	Тогда таблица "ТабличнаяЧасть1" стала равной:
		| 'Реквизит строка' |
		| '$Строка111$'     |
		| '222'             |
		| '333'             |


	
	

Сценарий: Проверка получения макета из формы списка справочника
	Когда я удаляю все элементы Справочника "Справочник3"
	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку 'Вывести список...'
	Тогда открылось окно 'Вывести список'
	И я нажимаю на кнопку 'ОК'
	И я жду когда в табличном документе "" заполнится ячейка "R1C1" в течение 10 секунд
	Тогда табличный документ формы с именем "" стал равен:
			| 'Наименование' | 'Код'       |
			| 'Тест'         | '*'         |
	
	И Я запоминаю значение выражения '"Тест"' в переменную "СтрокаТест"
	
	Если Версия платформы ">=" "8.3.15" Тогда
		И Я закрываю текущее окно
	Иначе
		И Я закрываю окно 'Список'
		
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку 'Вывести список...'
	Тогда открылось окно 'Вывести список'
	И я нажимаю на кнопку 'ОК'
	И я жду когда в табличном документе "" заполнится ячейка "R1C1" в течение 10 секунд
	Тогда табличный документ формы с именем "" стал равен:
			| 'Наименование' | 'Код'       |
			| '$СтрокаТест$' | '*'         |


	
Сценарий: Проверка получения макета когда данные получены два раза в одном окне
	
	
	Когда я удаляю все элементы Справочника "Справочник3"
	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И В открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку 'Разрешить редактирование табличного документа'
	И я нажимаю на кнопку 'Сформировать отчет'
	И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "R4C2" в течение 20 секунд
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ПолучениеМакетаДваРазаЧасть1"
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ПолучениеМакетаДваРазаЧасть1СПустымиСтроками"
	И я нажимаю на кнопку 'Сформировать отчет с вертикальной чертой'
	И я жду, что в табличном документе "РеквизитТабличныйДокумент" ячейка "r5c2" станет равна "Тест|ДопСтрока" в течение 10 секунд
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ПолучениеМакетаДваРазаЧасть2"
	И я закрываю сеанс TESTCLIENT
	
	
Сценарий: Проверка шага, ожидающего значения ячейки макета
	Когда я удаляю все элементы Справочника "Справочник3"
	
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку "Сформировать отчет"
	И я жду, что в табличном документе "РеквизитТабличныйДокумент" ячейка "r5c2" станет равна "Тест" в течение 10 секунд
	
	
	
Сценарий: Проверка макета, когда используются значения контекста
	Когда я удаляю все элементы Справочника "Справочник3"
	
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку "Сформировать отчет"
	
	И я запоминаю значение выражения '"Т"' в переменную "БукваТ"
	И я запоминаю значение выражения '"с"' в переменную "БукваС"
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "МакетСПеременнымиКонтекста3"
	
	
	И я запоминаю значение выражения '"Т"' в переменную "БукваТ"
	И я запоминаю значение выражения '"е"' в переменную "БукваЕ"
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "МакетСПеременнымиКонтекста2"
	
	И я запоминаю значение выражения '"Тест"' в переменную "ПеременнаяСловоТест"
	Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "МакетСПеременнымиКонтекста1"
	
	

Сценарий: Я запоминаю значение макета и потом сравниваю с текущим макетом
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку "Сформировать отчет"
	
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'    | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'            | 'Нет'              | '*'            | ''                          | '1,2'           |

	И я запоминаю значение табличного документа "РеквизитТабличныйДокумент" как "ТабДок1"
	И я запоминаю значение табличного документа "РеквизитТабличныйДокумент" как "ТабДок2"
	
	И значения табличных документов равны
		| "ТабДок1" |
		| "ТабДок2" |
		
	И в табличном документе "РеквизитТабличныйДокумент" ячейка с адресом "R5C2" равна "Тест"
	И в табличном документе "РеквизитТабличныйДокумент" ячейка с адресом "R5C2" равна "Т*ст" по шаблону
	
Сценарий: Я получаю данные макета где есть объединенные ячейки
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И я нажимаю на кнопку "Сформировать отчет объединенные ячейки"


	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'    | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'            | 'Нет'              | '*'            | ''                          | '1,2'           |

	И табличный документ "РеквизитТабличныйДокумент" равен по шаблону:
		| 'Наиме*ние'       | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | '*Число'        |
		| 'Тест'            | 'Н*т'              | '*'            | ''                          | '1,2'           |

	И в открытой форме я нажимаю на кнопку "Записать и закрыть"
	
	
	
Сценарий: Проверка получения областей табличного документа
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И в открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет"
	И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 20 секунд
	
	#этот шаг не работает в Web, т.к. надо обязательно сохранить табличный документ в файл
	И Табличный документ "РеквизитТабличныйДокумент" содержит значения областей
		| "ОбластьПерваяСтрокаОтчетаНаименование" | "Тест" |
		
	Затем проверяю шаги на исключение:
        |'И Табличный документ "РеквизитТабличныйДокумент" содержит значения областей'|		
        |'\| "ОбластьПерваяСтрокаОтчетаНаименование" \| "ЗначениеКоторогоНет" \|'|		
		
	И Табличный документ "РеквизитТабличныйДокумент" содержит строки в областях
		| "ОбластьПерваяСтрокаОтчетаНаименование" | "Тес" |
	
	И Табличный документ "РеквизитТабличныйДокумент" содержит значения областей по шаблону
		| "ОбластьПерваяСтрокаОтчетаНаименование" | "*ес*" |
	
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'         | 'Нет'              | *              | ''                          | '1,2'           |
	
	
	
	
Сценарий: Я получаю данные макета открытого отдельным окном
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И в открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет"
	И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 20 секунд
	
	

	#Проверка работы расшифровки
	Если Версия платформы ">=" "8.3.9" Тогда
			#на 8.3.8 не сработал шаг я делаю двойной клик на текущей ячейке.
			И     у табличного документа с именем "РеквизитТабличныйДокумент" я перехожу к ячейке "R5C2"
			И пауза 1
			И     у табличного документа с именем "РеквизитТабличныйДокумент" я делаю двойной клик на текущей ячейке
			И пауза 1
			Тогда появилось предупреждение, содержащее текст "Тест"
			Тогда появилось предупреждение, содержащее текст '"Тест"' по шаблону
			Тогда появилось предупреждение, содержащее текст '"Те*т"' по шаблону
			
			Затем Я запоминаю значение выражения "0" в переменную "ПроверкаТекста"
			Если в окне предупреждения нет текста "Этого текст точно нет." тогда
				Затем Я запоминаю значение выражения "1" в переменную "ПроверкаТекста"
			Тогда переменная "ПроверкаТекста" имеет значение 1

			Затем Я запоминаю значение выражения "0" в переменную "ПоявилосьПредупреждение"
			Если появилось предупреждение Тогда
				Затем Я запоминаю значение выражения "1" в переменную "ПоявилосьПредупреждение"
			Тогда переменная "ПоявилосьПредупреждение" имеет значение 1

			
			Затем Я запоминаю значение выражения "0" в переменную "ПоявилосьПредупреждениеСНужнымТекстом"
			Если появилось предупреждение, содержащее текст "Тест" Тогда
				Затем Я запоминаю значение выражения "1" в переменную "ПоявилосьПредупреждениеСНужнымТекстом"
			Тогда переменная "ПоявилосьПредупреждениеСНужнымТекстом" имеет значение 1
			
			И я нажимаю на кнопку "OK"
	
	#проверка на частичное чтение табличного документа
	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 4 КолКол 6
	#Тогда Я задаю параметры чтения области макета "R1C1:R5C6"
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |

	
	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
	
	Дано Я задаю параметры чтения области макета "R1C1:R5C6"
	И табличный документ "РеквизитТабличныйДокумент" соответствует макету "Макет1"
	И область "R4C3:R5C6" табличного документа "РеквизитТабличныйДокумент" равна макету "МакетОбласть1"
	И область "R4C3:R5C6" табличного документа "РеквизитТабличныйДокумент" равна макету "МакетОбласть2" по шаблону
	И область "R4C3:R5C6" табличного документа "РеквизитТабличныйДокумент" стала равна
		| 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Нет'              |        '*'     |     ''                      |     '1,2'       |
		
	И область "R4C3:R5C6" табличного документа "РеквизитТабличныйДокумент" равна по шаблону
		| 'Предо*'           | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Нет'              |        '*'     |     ''                      |     '1*2'       |
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" содержит строки:
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |

	И табличный документ "РеквизитТабличныйДокумент" содержит строки:
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |

	И табличный документ "РеквизитТабличныйДокумент" содержит строки по шаблону:
		| 'Т*ст'         | 'Нет'              | '*'            | ''                          | '1,2'           |


	И табличный документ "РеквизитТабличныйДокумент" содержит строки из макета "ДанныеМакетаОтдельноеОкно"
	И табличный документ "РеквизитТабличныйДокумент" содержит строки из макета "ДанныеМакетаОтдельноеОкноПоШаблону" по шаблону
	

	И табличный документ "РеквизитТабличныйДокумент" содержит значения:
		| 'Тест'         | 
		| 'Нет'          | 

	И табличный документ "РеквизитТабличныйДокумент" не содержит значения:
		| '1111111111'         |  
		| '2222222222'         |  

#для строк
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "Наименование" равно значению "Тест"
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "Наименование" неравно значению "1111111111"
	
#для чисел
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "ПараметрЧисло" соответствуют условию  "больше"  1.1
	
	
	И я нажимаю на кнопку с именем 'СформироватьОтчетСВертикальнойПереносомСтроки'
	И пауза 1
	И табличный документ "РеквизитТабличныйДокумент" содержит строки из макета "ДанныеМакетаОтдельноеОкноПоШаблонуПеренос" по шаблону
		

	И в открытой форме я нажимаю на кнопку "Записать и закрыть"

		
Сценарий: Я получаю данные макета открытого отдельным окном когда в ячейке макета есть экранированная вертикальная черта
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И в открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет с вертикальной чертой"


	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'    | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест\|ДопСтрока' | 'Нет'              | '*'            | ''                          | '1,2'           |

	И в открытой форме я нажимаю на кнопку "Записать и закрыть"
		
		
		
		

Сценарий: Я получаю данные макета открытого отдельным окном когда в ячейке макета есть вертикальная черта
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И в панели функций я выбираю "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И в открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И в открытой форме я нажимаю на кнопку с заголовком "Записать"
	И в открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет с вертикальной чертой"


	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
		
	И табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'     | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест\|ДопСтрока'  | 'Нет'              | '*'            | ''                          | '1,2'           |

	И в открытой форме я нажимаю на кнопку "Записать и закрыть"
		
			
	
		