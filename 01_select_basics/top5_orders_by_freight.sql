--Northwind, Orders: вивести 5 замовлень з найбільшим Freight
USE Northwind;
GO
SELECT Top 5 OrderID, Freight 
FROM Orders
ORDER BY Freight DESC;