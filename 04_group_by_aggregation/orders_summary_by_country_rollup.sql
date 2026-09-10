--Ієрархічний звіт по замовленнях: кількість замовлень і суму фрахту по кожній країні доставки та підсумковий рядок по всіх країнах разом
USE Northwind;
GO
SELECT
	ShipCountry,
	COUNT(*) AS total_orders,
	SUM(Freight) AS total_freight	
FROM Orders
GROUP BY ROLLUP(ShipCountry);