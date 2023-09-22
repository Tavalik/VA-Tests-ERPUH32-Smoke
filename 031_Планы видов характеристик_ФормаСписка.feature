﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Планы видов характеристик - ФормаСписка
# Конфигурация: 1С:ERP. Управление холдингом
# Версия: 3.2.1.27

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка плана видов характеристик "Виды бюджетов"

	Дано Я открываю основную форму списка плана видов характеристик "ВидыБюджетов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыБюджетов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыБюджетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Виды контроля документов"

	Дано Я открываю основную форму списка плана видов характеристик "ВидыКонтроляДокументов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыКонтроляДокументов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыКонтроляДокументов"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Виды аналитик (корпоративные)"

	Дано Я открываю основную форму списка плана видов характеристик "ВидыСубконтоКорпоративные"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыСубконтоКорпоративные"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыСубконтоКорпоративные"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Статьи расходов"

	Дано Я открываю основную форму списка плана видов характеристик "СтатьиРасходов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик СтатьиРасходов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик СтатьиРасходов"
	И Я закрываю текущее окно
