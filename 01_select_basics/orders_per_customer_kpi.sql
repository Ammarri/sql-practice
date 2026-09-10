--Northwind, Orders: в одному запиті вивести загальну кількість замовлень,кількість унікальних клієнтів, що розміщували замовлення та середню кількість замовлень на 1 клієнта. 
USE Northwind;
GO
SELECT 
	COUNT(*) AS total_orders,
	COUNT(DISTINCT CustomerID) AS unique_customers,--зробили хоча б одне замовлення
	CAST(1.0*COUNT(*)/COUNT(DISTINCT CustomerID) AS decimal(10,1)) AS orders_per_customer --ціле число в дріб через 1.0, обрізка до 1 символа через cast
FROM Orders;