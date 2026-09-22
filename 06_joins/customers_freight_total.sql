-- Фінансовий відділ просить звіт по клієнтах: назва компанії, країна, кількість замовлень і загальна сума фрахту. 
-- Клієнти без замовлень мають показувати 0 а не NULL. Відсортувати за загальним фрахтом від найбільшого

USE Northwind;
GO
SELECT
	c.CompanyName AS [Company],
	c.Country,
	COUNT(o.OrderID) AS [Total orders],					-- кількість непорожніх комірок, якщо рахувати нічого - поверне 0
	ISNULL(SUM(o.Freight),0) AS [Total freight]         -- якщо сумувати нічого - поверне NULL, треба перетворити вручну на 0 
FROM Customers AS c
	LEFT JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName, c.Country
ORDER BY [Total freight] DESC;