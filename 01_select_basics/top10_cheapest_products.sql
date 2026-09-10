--Northwind, Products: вивести 10 найдешевших товарів
USE Northwind;
GO
SELECT TOP 10 ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;