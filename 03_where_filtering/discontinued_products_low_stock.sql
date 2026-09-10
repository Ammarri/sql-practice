-- Аналітик просить знайти товари, яких на складі майже не залишилось - від 0 до 5 одиниць включно, але при цьому вони зняті з продажу.
USE Northwind;
GO
SELECT ProductName, UnitsInStock, Discontinued
FROM Products
WHERE UnitsInStock BETWEEN 0 AND 5
	AND Discontinued = 1;     --Discontinued має тип bit:1-зняті з продажу, 0-активні
