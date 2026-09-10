--Northwind, Customers: вивести назву компанії і регіон. Де регіон відсутній має бути текстом "Не вказано"
USE Northwind;
GO
SELECT 
	CompanyName AS company,
	ISNULL(Region, 'Не вказано') AS company_region
FROM Customers;