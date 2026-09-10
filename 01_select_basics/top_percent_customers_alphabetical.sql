--Northwind, Customers: вивести перші 10% записів, відсортованих за CompanyName
USE Northwind;
GO
SELECT TOP 10 PERCENT * -- автоматично округлює до більшого цілого числа (9.1-10)
FROM Customers
ORDER BY CompanyName;-- =ASC (a-z)