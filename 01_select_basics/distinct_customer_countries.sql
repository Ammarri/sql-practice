--Northwind, Customers: отримати список унікальних країн клієнтів
USE Northwind;
GO
SELECT DISTINCT Country AS client_country
FROM Customers;