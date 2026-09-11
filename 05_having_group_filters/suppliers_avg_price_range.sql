-- Відділ закупівель хоче переглянути постачальників, у яких середня ціна товарів від $20 до $50, і кількість товарів по кожному
USE Northwind;
GO
SELECT
	SupplierID,
	CAST(AVG(UnitPrice) AS decimal(10,2)) AS avg_price,
	COUNT(*) AS total_products    -- кількість рядків (видів товарів) / всі фізичні штуки товару - через SUM
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitPrice) BETWEEN 20 AND 50
ORDER BY avg_price;

-- COUNT: кіл-ть замовлень, товарів(асортимент), клієнтів
-- SUM: загальна сума фрахта, кількість товару(одиниць)на складі, загальна виручка