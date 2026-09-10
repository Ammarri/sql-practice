--Відділ логістики просить замовлення за першу половину 1997 року (з 1 січня по 30 червня). 
--Вивести OrderID, CustomerID, OrderDate і ShipCountry. Відсортувати за датою замовлення.
USE Northwind;
GO
SELECT OrderID, CustomerID, OrderDate, ShipCountry
FROM Orders
WHERE OrderDate >='1997-01-01' AND OrderDate <'1997-07-01' --between datetime формат порахує невірно
ORDER BY OrderDate ASC;