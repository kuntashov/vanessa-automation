﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение","И я выполняю метод шаг с текстом и он не вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнВызываетИсключение","И я выполняю метод шаг с текстом и он вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПомещаюВБуферОбменаСтроку(Парам01)","ЯПомещаюВБуферОбменаСтроку","И я помещаю в буфер обмена строку 'Нужная строка'","Помещает строку в буфер обмена.","Прочее.Буфер обмена");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФайлеИнструкцииНетСтроки(Парам01,Парам02)","ВФайлеИнструкцииНетСтроки","И в Файле инструкции ""Instr_ФичаДляПроверкиОтчетаHTML.HTML"" нет строки  ""я выполняю простой шаг контекста""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФайлеИнструкцииЕстьСтрока(Парам01,Парам02)","ВФайлеИнструкцииЕстьСтрока","И в Файле инструкции ""Instr_ФичаДляПроверкиОтчетаHTML.HTML"" есть строка ""Другой текст первого шага""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов()","ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов","И в форме VA синоним элементов неравен заголовку элементов","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеVAВЗаголовкеЭлементовНетРусскихБукв()","ВФормеVAВЗаголовкеЭлементовНетРусскихБукв","И в форме VA в заголовке элементов нет русских букв","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам)","ЯИспользуюСлужебноеУсловиеСТаблицейТогда","И я использую служебное условие с таблицей Тогда","","","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюПростойШаг()","ЯВыполняюПростойШаг","Когда я выполняю простой шаг");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюЕщёПростойШаг()","ЯВыполняюЕщёПростойШаг","И я выполняю ещё простой шаг");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль(Парам01, Парам02)","ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль","И я запускаю Vanessa Automation для теста вывода текста в консоль ""ИмяФайлаФлага"" ""ИмяФайлаВывода""","","");
	
	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
		
	КонецПопытки;
КонецПроцедуры




&НаКлиенте
//И я выполняю метод шаг с текстом и он не вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)
Процедура ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
КонецПроцедуры

&НаКлиенте
//И я выполняю метод шаг с текстом и он вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)
Процедура ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	БылоИсключение = Ложь;
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		БылоИсключение = Истина;
	КонецПопытки;
	
	Если НЕ БылоИсключение Тогда
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И я помещаю в буфер обмена строку 'Вывод произвольной информации в лог с помощью шага'
//@ЯПомещаюВБуферОбменаСтроку(Парам01)
Процедура ЯПомещаюВБуферОбменаСтроку(Знач Стр) Экспорт
	Стр = Ванесса.ПолучитьКорректныйТекстДляВставкиВПоле(Стр);
	//Стр = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(Стр);
	
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайла,"UTF-8",,Истина); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	 
	СтрокаКоманды = "clip < ""%1""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ИмяВременногоФайла);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды);
КонецПроцедуры

&НаКлиенте
//И в Файле инструкции "Instr_ФичаДляПроверкиОтчетаHTML.HTML" нет строки "я выполняю простой шаг контекста"
//@ВФайлеИнструкцииНетСтроки(Парам01,Парам02)
Процедура ВФайлеИнструкцииНетСтроки(ИмяФайла,СтрокаПоиска) Экспорт
	Если Контекст.Свойство("КаталогHTML") Тогда
		ИмяФайла = Контекст.КаталогHTML + "\" + ИмяФайла;
	ИначеЕсли Контекст.Свойство("КаталогMarkdown") Тогда	
		ИмяФайла = Контекст.КаталогMarkdown + "\" + ИмяФайла;
	Иначе
		ВызватьИсключение "Не смог определить файл для проверки.";
	КонецЕсли;	 
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;	 
		
		Поз = Найти(Стр,СтрокаПоиска);
		Если Поз > 0 Тогда
			ТекстСообщения = "В файле <%1> найдена строка <%2>";
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",СтрокаПоиска);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
	КонецЦикла;	
	
	Текст.Закрыть();
	
КонецПроцедуры

&НаКлиенте
//И в Файле инструкции "Instr_ФичаДляПроверкиОтчетаHTML.HTML" есть строка "Другой текст первого шага"
//@ВФайлеИнструкцииЕстьСтрока(Парам01,Парам02)
Процедура ВФайлеИнструкцииЕстьСтрока(ИмяФайла,СтрокаПоиска) Экспорт
	Если Контекст.Свойство("КаталогHTML") Тогда
		ИмяФайла = Контекст.КаталогHTML + "\" + ИмяФайла;
	ИначеЕсли Контекст.Свойство("КаталогMarkdown") Тогда	
		ИмяФайла = Контекст.КаталогMarkdown + "\" + ИмяФайла;
	Иначе
		ВызватьИсключение "Не смог определить файл для проверки.";
	КонецЕсли;	 
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	Стр = Текст.Прочитать();
	Поз = Найти(Стр,СтрокаПоиска);
	Если Поз = 0 Тогда
		ТекстСообщения = "В файле <%1> не найдена строка <%2>";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",СтрокаПоиска);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Текст.Закрыть();
КонецПроцедуры

&НаКлиенте
//И в текущей форме синоним элементов неравен заголовку элементов
//@ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов()
Функция ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов() Экспорт
	СтрокаОшибки = "";
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЭлементыОкна = АктивноеОкно.НайтиОбъекты();
	Для Каждого Элем Из ЭлементыОкна Цикл
		Если ТипЗнч(Элем) = Тип("ТестируемаяФорма") Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Элем.Имя = "Перезагрузить" Тогда
			Продолжить;
		ИначеЕсли Элем.Имя = "Статистика" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 18) = "СостояниеПросмотра" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 12) = "СтрокаПоиска" Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Элем.Имя = Элем.ТекстЗаголовка Тогда
			СтрокаОшибки = СтрокаОшибки + "Имя=" + Элем.Имя + "; Заголовок=" + Элем.ТекстЗаголовка + "; Тип=" + ТипЗнч(Элем) + Символы.ПС;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если НЕ ПустаяСтрока(СтрокаОшибки) Тогда
		ТекстОшибки = Ванесса.Локализовать("Найдены проблемы перевода.");
		ВызватьИсключение ТекстОшибки + Символы.ПС + СтрокаОшибки;
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
Функция ВСтрокеЕстьРусскиеБуквы(Знач Стр)
	Стр = НРег(Стр);
	
	Если Найти(Стр, "а") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "б") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "в") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "г") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "д") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "е") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ё") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ж") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "з") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "и") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "й") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "к") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "л") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "м") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "н") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "о") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "п") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "р") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "с") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "т") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "у") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ф") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "х") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ц") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ч") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ш") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "щ") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ъ") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ы") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ь") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "э") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ю") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "я") > 0 Тогда
		Возврат Истина;
	КонецЕсли;	 
	
	Возврат Ложь;
КонецФункции	 

&НаКлиенте
//И в форме VA в заголовке элементов нет русских букв
//@ВФормеVAВЗаголовкеЭлементовНетРусскихБукв()
Функция ВФормеVAВЗаголовкеЭлементовНетРусскихБукв() Экспорт
	СтрокаОшибки = "";
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЭлементыОкна = АктивноеОкно.НайтиОбъекты();
	Для Каждого Элем Из ЭлементыОкна Цикл
		Если ТипЗнч(Элем) = Тип("ТестируемаяФорма") Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Прав(Элем.Имя, 18) = "СостояниеПросмотра" Тогда
			Продолжить;
		ИначеЕсли Элем.Имя = "Статистика" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 12) = "СтрокаПоиска" Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если ВСтрокеЕстьРусскиеБуквы(Элем.ТекстЗаголовка) Тогда
			СтрокаОшибки = СтрокаОшибки + "Имя=" + Элем.Имя + "; Заголовок=" + Элем.ТекстЗаголовка + "; Тип=" + ТипЗнч(Элем) + Символы.ПС;
		КонецЕсли;	 
		
	КонецЦикла;	 
	
	Если НЕ ПустаяСтрока(СтрокаОшибки) Тогда
		ТекстОшибки = Ванесса.Локализовать("Найдены проблемы перевода.");
		ВызватьИсключение ТекстОшибки + Символы.ПС + СтрокаОшибки;
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
//И я использую служебное условие с таблицей Тогда
//@ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам)
Функция ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам) Экспорт
	Для Каждого Элем Из ТабПарам Цикл
		Сообщить(Элем.Кол1);
	КонецЦикла;	 
КонецФункции

&НаКлиенте
//Когда я выполняю простой шаг
//@ЯВыполняюПростойШаг()
Процедура ЯВыполняюПростойШаг() Экспорт
	
КонецПроцедуры

&НаКлиенте
//И я выполняю ещё простой шаг
//@ЯВыполняюЕщёПростойШаг()
Процедура ЯВыполняюЕщёПростойШаг() Экспорт
	
КонецПроцедуры

&НаКлиенте
//И я запускаю Vanessa Automation для теста вывода текста в консоль
//@ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль()
Функция ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль(ИмяФайлаФлага, ИмяФайлаВывода) Экспорт
	ТекстКоманды = """%КаталогПрограммы"" /IBConnectionString ""%СтрокаСоединения"" /TestManager /N""%Пользователь"" /Execute ""%ИмяEpf"" /CStartFeaturePlayer;DisableUserSettingsLoader;NoLoadConfig;VBParams=%VBParams";
	//> ""%ИмяФайлаВывода"" 2>&1
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%КаталогПрограммы", КаталогПрограммы() + "1cv8c");
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%СтрокаСоединения", СтрЗаменить(СтрокаСоединенияИнформационнойБазы(), """", """"""));
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%Пользователь", ИмяПользователя());
	
	Если Ванесса.Объект.ВерсияПоставки = "standart" Тогда
		ИмяEpf = "vanessa-automation.epf";
	Иначе	
		ИмяEpf = "vanessa-automation-single.epf";
	КонецЕсли;
	
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%ИмяEpf", Ванесса.Объект.КаталогИнструментов + "/" + ИмяEpf);
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%VBParams", Ванесса.ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "TestConsole.json");
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%ИмяФайлаВывода", ИмяФайлаВывода);
	
	//Сообщить(ТекстКоманды);
	ИмяФайлаКоманды = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяФайлаКоманды,"UTF-8",,Ложь); 
	ЗТ.Записать(ТекстКоманды); 
	ЗТ.Закрыть();
	
	КомандаOneScript = "oscript " + Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "tools\onescript\RunCommandLineFromFile.os """ + ИмяФайлаКоманды + """ > ""%ИмяФайлаВывода"" 2>&1";
	//КомандаOneScript = "oscript " + Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "tools\onescript\RunCommandLineFromFile.os """ + ИмяФайлаКоманды + """";
	КомандаOneScript = СтрЗаменить(КомандаOneScript, "%ИмяФайлаВывода", ИмяФайлаВывода);
	
	Сообщить(КомандаOneScript);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(КомандаOneScript, Истина);
	
	
	//КомандаСистемы(ТекстКоманды);
	//ЗапуститьПриложение(ТекстКоманды, ,Истина);
	//Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(ТекстКоманды, Истина);
	
КонецФункции
