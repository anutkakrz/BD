--1. Приведите десять типовых бизнес-процессов для предметной
-- области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.
1. Загрузить видео на хостинг - CREATE
2. Сделать описание к видео - CREATE
3. Добавить хештеги - CREATE
4. Оставить комментарий - CREATE
5. Удалить комментарий - DELETE
6. Заблокировать посетителя - UPDATE
7. Удалить видео - DELETE
8. Поделиться ссылкой на видео в соцсетях - CREATE
9. Скачать видео - CREATE
10. Поставить лайк - CREATE
11. Посмотреть статистику просмотров - Aggregation

--Вывести название и стоимость товаров от 20 до 150 EUR.
ProductName,
Price
FROM Products
WHERE Price >=20
AND
Price <=150;

--Вывести телефоны поставщиков из Japan и Spain.
SELECT
Phone
FROM Suppliers
WHERE Country ='Japan'
OR
Country ='Spain';

--Вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.
SELECT
ProductName,
Price
FROM Products
WHERE 	SupplierID!=1;

--Вывести контактные имена клиентов, кроме тех, что из Germany и Brazil.
SELECT
ContactName
FROM Customers
WHERE 	Country!='Germany'
AND
Country!='Brazil';

--Вывести товары с ценой от 50 до 100 EUR (вкл.)
SELECT
ProductName,
Price
FROM Products
WHERE 	Price >=50
AND
Price <=100;

--Вывести название и стоимость товаров из категорий 1 и 3 со стоимостью до 50 EUR (вкл.)

SELECT
ProductName, Price
FROM Products
WHERE CategoryID=1 AND Price<=50
OR CategoryID=3 AND Price<=50;
