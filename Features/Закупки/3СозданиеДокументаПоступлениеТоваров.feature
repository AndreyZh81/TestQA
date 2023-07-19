﻿#language: ru



Функционал: создание документа Поступление товаров

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	

Как Менеджер по закупкам я хочу
создание документа поступление товаров 
чтобы поставить на учет   

Сценарий: создание документа посупление товаров
// создание документа
* Открытие формы создание документа
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	Тогда элемент формы с именем "Склад" стал равен 'Склад отдела продаж'
		
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Магазин "Бытовая техника"'
* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Хлеб'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1,00'
	И в таблице "Товары" я завершаю редактирование строки
	и я нажимаю на кнопку "Записать"
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар' | 'Артикул' | 'Цена'  | 'Количество' | 'Сумма' |
		| 'Хлеб'  | 'H987'    | '15,00' | '10,00'       | '15,00' |
	
	
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно 'Поступление товара * от *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара * от *' в течение 20 секунд

* Проверка создания документа

И таблица "Список" содержит строки:
	| 'Номер' | 
	| '$Номер$' | 
 
Сценарий: проверка наличия в справочнике номенклатуры Торт
	И В командном интерфейсе я выбираю 'Продажи' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И таблица "Список" содержит строки:
		| 'Наименование' | 
		| 'Торт' | 


