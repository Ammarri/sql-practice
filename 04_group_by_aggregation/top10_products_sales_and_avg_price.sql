--Зведений звіт по [Order Details]: для кожного ProductID підрахувати скільки разів товар замовляли, загальну кількість одиниць і середню ціну продажу. 
--Вивести топ-10 товарів за загальною кількістю. Розрахувати середню ціну з урахуванням знижки (чиста ціна продажу)
USE Northwind;
GO
SELECT TOP 10 ProductID,
	COUNT(*) AS total_orders,
	SUM(Quantity) AS total_quantity,
	CAST(AVG(UnitPrice) AS decimal(10,2)) AS avg_sale_price,             
	CAST(AVG(UnitPrice*(1-Discount)) AS decimal(10,2)) AS avg_pure_price -- знижка=частка від одиниці; UnitPrice, Discount-not null
FROM [Order Details]
GROUP BY ProductID
ORDER BY total_quantity DESC;