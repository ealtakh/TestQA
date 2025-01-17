﻿#language: ru

@tree

Функционал: Заполнение документа Заказ покупателя

Как Тестировщик я хочу
проверить заполнение реквизита Организация в документе Заказ покупателя
чтобы функционал работал корректно  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение документа Заказ покупателя
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	И в таблице 'List' я перехожу к строке:
		| "Вид"     | "Вид взаиморасчетов" | "Код" | "Наименование"                                        |
		| "Обычное" | "По соглашениям"     | "3"   | "Индивидуальное соглашение 2 (расчет по соглашениям)" |
	И в таблице 'List' я выбираю текущую строку
	Если элемент формы с именем "Company" имеет значение "" Тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
		И в таблице 'List' я перехожу к строке:
			| "Код" | "Наименование"           |
			| "1"   | "Собственная компания 1" |
		И я нажимаю на кнопку с именем 'FormChoose'
			

	 


