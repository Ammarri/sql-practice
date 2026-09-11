-- Аналіз асортименту: знайти категорії, де виконуються ВСІ три умови одночасно:
-- більше 8 товарів; середня ціна вище $20; є хоча б один товар дорожче $100
-- Вивести CategoryID, кількість товарів, середню ціну, максимальну ціну. Сортування за середньою ціною

USE Northwind;
GO
SELECT
	CategoryID,
	COUNT(*) AS product_count,           
	CAST(AVG(UnitPrice) AS decimal(10,2)) AS avg_price,
	MAX(UnitPrice) AS max_price
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 8				  -- більше 8 товарів (видів)
   AND AVG(UnitPrice) > 20		  -- cередня ціна вище $20
   AND MAX(UnitPrice) > 100       -- хоча б один товар дорожче $100
ORDER BY avg_price;