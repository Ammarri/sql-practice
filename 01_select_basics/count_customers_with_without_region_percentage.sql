--Northwind: скільки клієнтів мають заповнений Region? Скільки не має? 
USE Northwind;
GO
SELECT
	COUNT (Region) AS customers_with_region,
	COUNT(*)- COUNT(Region) AS customers_null_region, -- COUNT(CustomerID) тут дасть той же результат, так як це ПК
--Яка частка клієнтів з регіоном, яка без?  
	CAST(100.0*COUNT(Region)/COUNT(*) AS decimal(10,2)) AS [%_with_region], --переводжу у дріб через 100.0, скорочую до двох символів після коми
	CAST(100.0 * (COUNT(*) - COUNT(Region))/ COUNT (*) AS decimal(10,2)) AS [%_null_region] --екранувати % обов'язково
FROM Customers;