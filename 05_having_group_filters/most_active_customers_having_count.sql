-- Комерційний директор хоче знайти лише найактивніших клієнтів (хто зробив більше 5 замовлень). Сортування від найбільшого.
USE Northwind;
GO
SELECT 
	CustomerID, 
	COUNT(*) AS total_orders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5 -- без аліаса, HAVING виконується ДО SELECT
ORDER BY total_orders DESC;