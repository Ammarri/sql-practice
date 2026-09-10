--Маркетолог хоче зрозуміти географію клієнтів: скільки компаній у кожній країні від найбільшої до найменшої
USE Northwind;
GO
SELECT
	Country,
	COUNT(*) AS total_clients -- або COUNT(CustomerID)
FROM Customers	
GROUP BY Country
ORDER BY total_clients DESC;

--Окремим запитом: скільки всього унікальних країн представлено в базі?
USE Northwind;
GO
SELECT COUNT(DISTINCT Country) AS unique_countries
FROM Customers;