﻿# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA1_Работать_с_макетами_данных


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

//Эта возможность появилась только с 8.3.8
@IgnoreOn836
@IgnoreOn837

Функциональность: Запись содержимого макета в файл


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Запись содержимого макета в файл

	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И в поле 'Наименование' я ввожу текст '111'
	И я нажимаю на кнопку 'Записать'
	И я активизирую поле с именем "РеквизитТабличныйДокумент"
	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R1C1"
	Если файл "c:\temp\temp_mxl.mxl" существует тогда
		Тогда я удаляю файл "c:\temp\temp_mxl.mxl"
		И пауза 1
	Если файл "c:\temp\temp_mxl.mxl" существует тогда
		Тогда я вызываю исключение "Временный файл должен был быть удален, но он существует."
		
	И я буду выбирать внешний файл "c:\temp\temp_mxl.mxl"
	И у текущего элемента формы я вызываю запись содержимого в файл
	И пауза 3
	И Файл "c:\temp\temp_mxl.mxl" существует
	И я жду появления файла 'c:\temp\temp_mxl.mxl' в течение 1 секунд
	И я жду появления файла 'c:\temp\temp_*.mxl' в течение 1 секунд

Сценарий: Создание каталога

	Допустим я создаю каталог "c:\temp\tempfiles"
	Когда количество файлов в каталоге "c:\temp\tempfiles" я запоминаю как "КоличествоФайлов"
	Тогда переменная "КоличествоФайлов" имеет значение 0 

Сценарий: Копирование файла

	Допустим я копирую файл "c:\temp\temp_mxl.mxl" "c:\temp\tempfiles\temp_mxl.mxl"
	Когда количество файлов в каталоге "c:\temp\tempfiles" я запоминаю как "КоличествоФайлов"
	Тогда  переменная "КоличествоФайлов" имеет значение 1
	И Файл "c:\temp\tempfiles\temp_mxl.mxl" существует

Сценарий: Перемещение файлов 	 

	Допустим Файл "c:\temp\tempfiles\temp_mxl.mxl" существует
	Когда я перемещаю файл "c:\temp\tempfiles\temp_mxl.mxl" "c:\temp\tempfiles\temp.mxl"
	Тогда Файл "c:\temp\tempfiles\temp.mxl" существует
	И Проверяю шаги на Исключение:
        |'И  Файл "c:\temp\tempfiles\temp_mxl.mxl" существует'|

Сценарий: Удаление файла		

	Допустим я копирую файл "c:\temp\tempfiles\temp.mxl" "c:\temp\tempfiles\temp2.mxl"
	И для каждого файла "ТекФайл" из каталога "c:\temp\tempfiles"
		Когда я удаляю файл "$ТекФайл$"
	Тогда количество файлов в каталоге "c:\temp\tempfiles" я запоминаю как "КоличествоФайлов"
	И  переменная "КоличествоФайлов" имеет значение 0 
	Тогда я удаляю файл "c:\temp\tempfiles"	
	