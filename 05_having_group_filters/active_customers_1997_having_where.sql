-- Менеджер просить список активних клієнтів, які у 1997 році зробили більше 3 замовлень. Сортування за кількістю замовлень
USE Northwind;
GO
SELECT
	CustomerID,
	COUNT(*) AS orders_for_1997
FROM Orders
WHERE OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01'
GROUP BY CustomerID
HAVING COUNT(*) > 3
ORDER BY orders_for_1997; 