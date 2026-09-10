--Фінансовий директор хоче знати: скільки унікальних клієнтів замовляло у кожного менеджера? 
--Сортування за кількістю унікальних клієнтів
USE Northwind;
GO
SELECT 
	EmployeeID,
	COUNT(DISTINCT CustomerID) AS unique_customers
FROM Orders
GROUP BY EmployeeID
ORDER BY unique_customers DESC; 