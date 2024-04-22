--
--Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) по убыванию цены.
SELECT
ProductName,
Price *0.995 Price_down
FROM Products
ORDER BY Price DESC

--
--Вывести товары в диапазоне цены от 50 до 200 EUR
--(проекция: название, ценаснаценкой30процентов) по возрастанию цены.
SELECT
ProductName,
Price *1.3 Price_Up

FROM Products
WHERE Price BETWEEN 50 AND 200
ORDER BY Price ASC
--
--Вывести всех клиентов, кроме тех, что из USA и UK.
SELECT *
FROM Customers
WHERE Country !="USA" AND
Country !="UK"
--
--Вывести товары из категорий 2 и 5 (проекция: всеимеющиесяполя, ценавдолларах)
SELECT *,
Price *1.07 Price_Dol
FROM Products
WHERE CategoryID IN (2,5)