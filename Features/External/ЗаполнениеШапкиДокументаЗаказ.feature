﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: заполнение шапки документа Заказ

Как Менеджер по продажам я хочу
заполненить шапку документа Заказ   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение шапки документа Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Животноводство ООО '
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
