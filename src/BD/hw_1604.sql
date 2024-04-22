--(1) Вывести данные о товарах (проекция: названиетовара,
--цена, названиекатегории, названиекомпаниипоставщика)

SELECT
Products.ProductName,
Products.Price,
Categories.CategoryName,
Suppliers.SupplierName
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

--(2) Вывести список стран, которые поставляют морепродукты

SELECT
Suppliers.Country
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = "Seafood"

--(3) Вывести два самых дорогих товара из категории Beverages из USA

SELECT
*
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = "Beverages"
AND
Country = "USA"
ORDER  BY Price DESC
LIMIT 2

--(4) Вывести название и стоимость в USD одного самого дорогого
--проданного товара

SELECT
Products.ProductName,
Products.Price*1.07 Price_Dol
FROM OrderDetails

JOIN Products ON Products.ProductID = OrderDetails.ProductID
ORDER BY Price DESC
LIMIT 1

--(5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД - это данные, а СУБД - это "приложение" с помощью которого мы можем
обращаться к данным и обрабатывать их.
