--Northwind, Customers: вибрати тільки CustomerID, CompanyName і Country та додати аліаси

USE Northwind;
GO
SELECT 
	CustomerID AS Сustomer_id,
	CompanyName AS Сompany_name,
	Country AS Сountry 
FROM Customers;