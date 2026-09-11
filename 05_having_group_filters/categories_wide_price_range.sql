-- Потрібен список категорій, де є і дуже дешеві (мінімальна ціна менше $10), 
-- і дуже дорогі товари (максимальна ціна більше $50), наскільки широкий ціновий діапазон?
USE Northwind;
GO
SELECT
	CategoryID,
	MIN(UnitPrice) AS min_price,
	MAX(UnitPrice) AS max_price,
	MAX(UnitPrice) - MIN(UnitPrice) AS price_range
FROM Products
GROUP BY CategoryID
HAVING MIN(UnitPrice) < 10
   AND MAX(UnitPrice) > 50
ORDER BY price_range;