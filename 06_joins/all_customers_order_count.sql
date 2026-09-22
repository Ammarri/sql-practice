-- Маркетолог просить список всіх клієнтів і кількість їх замовлень — включно з тими хто ще нічого не замовив. 
-- Відсортувати від найактивнішого до найменш активного

USE Northwind;
GO
SELECT
	c.CustomerID AS [Customer ID],
	c.CompanyName AS [Company],
	COUNT(o.OrderID) AS [All orders]		-- COUNT(*) с LEFT JOIN не використовувати, порахує NULL як 1 
FROM Customers AS c
	LEFT JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY [All orders] DESC;