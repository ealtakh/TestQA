﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Заполнение шапки документа Заказ

Как Оператор я хочу
Заполнить шапку документа Заказ
чтобы выполнить часть бизнес-процесса по созданию документа Заказ 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки документа Заказ
* Заполнение шапки документа Заказ
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Мосхлеб ОАО"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"

