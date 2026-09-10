--Northwind, Customers: Відсортувати компанії за країною -за зростанням та містом - за спаданням 
USE Northwind;
GO
SELECT
	CompanyName,
	Country,
	City
FROM Customers
ORDER BY Country ASC, City DESC;--—  ASC/DESC потрібні для кожного стовпця
