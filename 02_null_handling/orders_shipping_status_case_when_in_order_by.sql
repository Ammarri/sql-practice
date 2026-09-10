--Northwind, Orders: вивести OrderID, CustomerID і статус:якщо дата відправки заповнена -"Відправлено",якщо ні - "Очікує відправки" 
--Відсортувати так, щоб невідправлені були зверху

-- ВАР 1. Ризиковано, суто під SQL Server (NULL авт.зверху при ASC)
USE Northwind;
GO
SELECT 
	OrderID,
	CustomerID,
	CASE
		WHEN ShippedDate IS NOT NULL THEN 'Відправлено'
		ELSE 'Очікує відправки'
	END AS [Status]
FROM Orders
ORDER BY ShippedDate ASC; --замовлення без дати перші


-- ВАР 2. Контрольоване сортування, може переноситися на інші БД
SELECT 
	OrderID,
	CustomerID,
	CASE
		WHEN ShippedDate IS NOT NULL THEN 'Відправлено'
		ELSE 'Очікує відправки'
	END AS [Status]
FROM Orders
ORDER BY CASE WHEN ShippedDate IS NULL THEN 0 ELSE 1 END;--замовлення без дати перші (ASC:0-1)