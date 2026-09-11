-- Вивести загальну кількість замовлень і середній фрахт, тільки якщо замовлень більше 800
USE Northwind;
GO
SELECT
	COUNT(*) AS total_orders,
	CAST(AVG(Freight) AS decimal(10,2)) AS avg_freight
FROM Orders				
HAVING COUNT(*) > 800;    -- без GROUP BY, вся таблиця як одна група

-- Вивести загальну кількість замовлень і середній фрахт, тільки якщо замовлень більше 900
SELECT
	COUNT(*) AS total_orders,
	CAST(AVG(Freight) AS decimal(10,2)) AS avg_freight
FROM Orders
HAVING COUNT(*) > 900;    -- порожній результат, кількість замовлень у базі менша за 900