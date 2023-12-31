﻿#language: ru

@tree

Функционал: тестирование отчетов

Как Тестировщик я хочу
проверить работу отчета, чтобы у пользователя не было проблем

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0901 подготовительный сценарий
Когда экспорт основных данных
Когда экспорт документов закупок

Сценарий: _0902 проверка отчета Информация по товарам
И В командном интерфейсе я выбираю 'Отчеты' 'D0010 Информация по товарам'
Тогда открылось окно 'D0010 Информация по товарам'
И в табличном документе 'Result' я перехожу к ячейке "R1C1"
И я нажимаю на кнопку с именем 'FormGenerate'
//Тогда табличный документ "Result" равен:
//	| 'Номенклатура'              | 'Файл' | 'Штрихкод'                         |
//	| 'Характеристика'            | ''     | ''                                 |
//	| 'Серия номенклатуры'        | ''     | ''                                 |
//	| 'Товар с характеристиками'  | ''     | '67676787889899\n90997878798989\n' |
//	| 'S/Красный'                 | ''     | '67676787889899'                   |
//	| 'XS/Черный'                 | ''     | '90997878798989'                   |
//	| 'M/Черный'                  | ''     | ''                                 |
//	| 'Товар без характеристик'   | ''     | '787889899'                        |
//	| 'Товар без характеристик'   | ''     | '787889899'                        |
//	| 'Услуга'                    | ''     | ''                                 |
//	| 'Услуга'                    | ''     | ''                                 |
//	| 'Товар со спецификацией'    | ''     | '\n\n'                             |
//	| '/'                         | ''     | ''                                 |
//	| '/'                         | ''     | ''                                 |
//	| 'XS/Красный'                | ''     | ''                                 |
//	| 'Набор'                     | ''     | '\n\n'                             |
//	| '/'                         | ''     | ''                                 |
//	| '/Товар с характеристиками' | ''     | ''                                 |
//	| '/'                         | ''     | ''                                 |

Дано Табличный документ "Result" равен макету "ИнформацияПоТоварам1" по шаблону

Сценарий: _0903 проверка отчета по закупкам
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Отчеты' 'D1001 Закупки'
Тогда открылось окно 'D1001 Закупки'
И в табличном документе 'Result' я перехожу к ячейке "R1C1"
И я нажимаю на кнопку с именем 'FormGenerate'
И я жду когда в табличном документе "ИмяРеквизита" заполнится ячейка "R16C4" в течение 20 секунд
Дано Табличный документ "Result" равен макету "Закупки1" по шаблону
