﻿
#language: ru

@tree
@SmokeTest

Функциональность: Дымовые тесты - Планы счетов - Запись
# Конфигурация: 1С:ERP. Управление холдингом
# Версия: 3.2.2.14

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: Запись элемента плана счетов "План счетов МСФО" (МСФО)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	ПланСчетов.МСФО КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент плана счетов МСФО"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент плана счетов МСФО"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент плана счетов МСФО"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент плана счетов МСФО"

		* Пересчитаем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПеречитать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПеречитать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент плана счетов МСФО"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент плана счетов МСФО"

		* Помечаем на удаление существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент плана счетов МСФО"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент плана счетов МСФО"

		* Снимаем пометку на удаление с существующего элемента
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента плана счетов МСФО"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента плана счетов МСФО"
