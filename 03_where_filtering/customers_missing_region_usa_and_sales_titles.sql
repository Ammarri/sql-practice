--Аналітик хоче перевірити дані на якість: треба знайти клієнтів, у яких НЕ заповнене поле Region і при цьому країна — США

USE Northwind;
GO
SELECT 
	CustomerID,
	CompanyName,
	Country,
	Region
FROM Customers
WHERE Country ='USA'              --або через IN
	AND Region IS NULL;

--Окремим запитом: вивести клієнтів, у яких Region заповнений, але ContactTitle містить слово "Sales" (у будь-якій позиції)
USE Northwind;
GO
SELECT 
	CustomerID,
	CompanyName,
	Country,
	Region, 
	ContactTitle
FROM Customers
WHERE Region IS NOT NULL
	AND ContactTitle LIKE'%Sales%';