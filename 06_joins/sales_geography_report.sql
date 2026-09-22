-- Підготувати звіт для презентації по географії продажів: країна клієнта, кількість унікальних клієнтів, кількість замовлень і середній фрахт по країні.
-- Включити тільки країни де є більше одного клієнта. Відсортувати за кількістю замовлень від найбільшої

USE Northwind;
GO
SELECT
	c.Country AS [Країна],
	COUNT(DISTINCT o.CustomerID) AS [Кіл-ть клієнтів],
	COUNT(o.OrderID) AS [Кіл-ть замовлень],
	CAST(AVG(o.Freight) AS decimal(10,2)) AS [Середній фрахт]
FROM Customers AS c
	INNER JOIN Orders AS o					-- клієнти, які зробили хоча б одне замовлення
	ON c.CustomerID = o.CustomerID			
GROUP BY c.Country
HAVING COUNT(DISTINCT o.CustomerID) > 1		-- більше одного клієнта (який купував, а не зареєстрований)
ORDER BY [Кіл-ть замовлень] DESC;	