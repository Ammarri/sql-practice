--Менеджер хоче перевірити лінійку продуктів від одного постачальника.Треба знайти всі товари і їх ціну: 
-- у назві яких є слово "Chef" / назва яких починається на "S"
USE Northwind;
GO
SELECT ProductName, UnitPrice
FROM Products
WHERE ProductName LIKE '%Chef%' -- несаргабельний пошук
	OR ProductName LIKE 'S%';   -- саргабельний пошук