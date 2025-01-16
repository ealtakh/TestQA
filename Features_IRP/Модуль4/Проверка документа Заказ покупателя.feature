﻿#language: ru

@tree

Функционал: Проверка документа Заказ покупателя

Как Тестировщик я хочу
Проверить заполнение документа заказ покупателя
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка документа заказ покупателя
* Создание документа Заказ покупателя
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	Тогда открылось окно "Соглашения"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Индивидуальное соглашение 1 (расчет по соглашениям)" |
	И в таблице 'List' я выбираю текущую строку
	И в таблице 'ItemList' я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице 'ItemList' я нажимаю кнопку выбора у реквизита с именем 'ItemListItem'
	Тогда открылось окно "Номенклатура"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            | "Ссылка"                  |
		| "2"   | "Товар без характеристик" | "Товар без характеристик" |
	И в таблице 'List' я выбираю текущую строку
	И я нажимаю на кнопку с именем 'FormWrite'
* Проверка заполнения поля Партнер
	Тогда элемент формы с именем 'Partner' стал равен "Клиент 2 (2 соглашения)"
* Проверка заполнения поля 
	Тогда элемент формы с именем 'Agreement' стал равен "Индивидуальное соглашение 1 (расчет по соглашениям)"
* Проверка блокировки поля Контрагент
	Тогда элемент формы с именем 'Partner' стал равен ""	
	И элемент формы "Контрагент" не доступен
			
		
		
	
		
		
