﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Планы счетов - ФормаСписка
# Конфигурация: 1С:ERP. Управление холдингом
# Версия: 3.2.1.27

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка плана счетов "План счетов МСФО"

	Дано Я открываю основную форму списка плана счетов "МСФО"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана счетов МСФО"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана счетов МСФО"
	И Я закрываю текущее окно
