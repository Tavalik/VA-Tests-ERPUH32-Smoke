﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Журналы документов - ФормаОбъекта
# Конфигурация: 1С:ERP. Управление холдингом
# Версия: 3.2.1.23

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы журнала документов "Движение инвестиций"

	Дано Я открываю основную форму журнала документов "ДвижениеИнвестиций"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДвижениеИнвестиций"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДвижениеИнвестиций"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Документы оперативного планирования"

	Дано Я открываю основную форму журнала документов "ДокументыБюджетирования"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыБюджетирования"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыБюджетирования"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Документы по ВНА"

	Дано Я открываю основную форму журнала документов "ДокументыПоВНАМСФО"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыПоВНАМСФО"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыПоВНАМСФО"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Документы по финансовым инструментам"

	Дано Я открываю основную форму журнала документов "ДокументыПоФинансовымИнструментам"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыПоФинансовымИнструментам"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ДокументыПоФинансовымИнструментам"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Операции с векселями"

	Дано Я открываю основную форму журнала документов "ОперацииСВекселями"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ОперацииСВекселями"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ОперацииСВекселями"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Операции с ценными бумагами"

	Дано Я открываю основную форму журнала документов "ОперацииСЦеннымиБумагами"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ОперацииСЦеннымиБумагами"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ОперацииСЦеннымиБумагами"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Протоколы закупочных процедур"

	Дано Я открываю основную форму журнала документов "ПротоколыЗакупочныхПроцедур"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ПротоколыЗакупочныхПроцедур"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов ПротоколыЗакупочныхПроцедур"
	И Я закрываю текущее окно

Сценарий: Открытие формы журнала документов "Регламентные операции МСФО"

	Дано Я открываю основную форму журнала документов "РегламентныеОперацииМСФО"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов РегламентныеОперацииМСФО"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму журнала документов РегламентныеОперацииМСФО"
	И Я закрываю текущее окно
