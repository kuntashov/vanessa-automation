# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA31_описание_настроек_и_инструкции

@IgnoreOnCIMainBuild
@DocumentationBuild


Функциональность: Описание закладок, расположенных на форме Vanessa-Automation

 
Контекст:
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации

	
	

Сценарий: Описание закладок, расположенных на форме VA

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В данном видео я расскажу какие закладки у меня есть и для чего они нужны."
	
	//Запуск сценариев
	*Закладка - "Запуск сценариев".
		И я рисую стрелку в автоинструкции от "" до "Запуск_сценариев"
			|'Цвет'          | 'Золотистый'   |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |
	
	Дано текст субтитров "Она является основной. Здесь происходит загрузка, запуск и отладка сценариев. "


	
	
	//Генератор EPF
	*Следующая закладка - "Генератор EPF".
		И я рисую стрелку в автоинструкции от "" до "ГенераторEPF"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |

			
	*Она служит для создания обработок.
		Дано клик на картинку "ГенераторEPF"
	
	Дано текст субтитров "Обработки содержат код, который необходим при создании новых шагов."
	Дано текст субтитров "Создавать их нужно в том случае, если вам не хватает стандартной библиотеки шагов."
	
	
	
	//Библиотеки
	*Закладка - "Библиотеки".
		И я рисую стрелку в автоинструкции от "" до "Библиотеки"
			|'Цвет'          | 'Оранжевый'    |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |

			
	*Эта закладка содержит список подключенных библиотек.
		Дано клик на картинку "Библиотеки"
	
	*Если используется моя стандартная поставка, то при первом запуске будет добавлена строка со стандартной библиотекой шагов.
		Дано я рисую стрелку от "" до "СтандартнаяБиблиотекаШагов"
			|'Цвет'          | 'СинеСерый'    |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаНиз'  |

			
	Дано текст субтитров "Стандартная библиотека находится в обработках, включенных в мой основной дистрибутив."
	Дано текст субтитров "Если используется вариант поставки Single, то при первом запуске эта строка добавлена не будет, т.к. данная библиотека уже встроена в Ванессу Single."
		
		
		
	//Работа с UI
	*Закладка - "Работа с UI".
		И я рисую стрелку в автоинструкции от "" до "Работа с UI"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |

			
	*С помощью неё происходит первичная обработка информации, которую вернул клиент тестирования.
		Дано клик на картинку "Работа с UI"
	
	Дано текст субтитров "Это добавление новых шагов, удаление лишних шагов и т.д."
		
		
		
	//Клиенты тестирования
	*Закладка - "Клиенты тестирования".
		И я рисую стрелку в автоинструкции от "" до "Клиенты тестирования"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |

			
	*Она используется для управления подключениями к сеансам "1С", поведение которых вы хотите проверить.
		Дано клик на картинку "Клиенты тестирования"
	
	Дано текст субтитров "Тут указываются параметры подключения тестируемого сеанса, и происходит запуск клиента тестирования."
		
		
	//Сервис
	*Завершает мой маленький рассказ закладка - "Сервис" :-)
		И я рисую стрелку в автоинструкции от "" до "Сервис"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '4000'         |
			|'ТочкаКуда'     | 'СерединаЛево' |
	
	*Здесь прячутся мои настройки.
		Дано клик на картинку "Сервис"
	
	Дано текст субтитров "Они позволяют управлять выполнением сценариев, формированием отчётов, автоинструкциями и т.д."
	Дано видеовставка "По каждой закладке и её элементам будет подробное описание в других видео на этом же канале. \n Спасибо за внимание!"
	
	Дано текст субтитров "Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
				