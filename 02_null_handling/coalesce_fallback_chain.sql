--Northwind, Customers: вивести для кожного клієнта поле "локація" — якщо є регіон, показати регіон; 
--якщо регіону немає але є місто — показати місто; якщо немає нічого — "Невідомо"
USE Northwind;
GO
SELECT 
	CustomerID,
	CompanyName,
	COALESCE(Region, City, 'Невідомо') AS [локація]
FROM Customers;