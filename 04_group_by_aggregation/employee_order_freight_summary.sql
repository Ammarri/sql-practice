-- Керівник просить статистику замовлень по менеджерах — скільки замовлень кожен оформив, яка загальна і середня вартість доставки.Cортування за кількістю замовлень
USE Northwind;
GO
SELECT 
	EmployeeID,
	COUNT(*) AS orders,
	SUM(Freight) AS freight_total,
	CAST(AVG(Freight) AS decimal(10,2)) AS freight_avg
FROM Orders
GROUP BY EmployeeID
ORDER BY Orders DESC;