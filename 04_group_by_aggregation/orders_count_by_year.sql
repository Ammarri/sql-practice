--Аналітик хоче побачити динаміку: скільки замовлень оформлено в кожному році,сортування за роком
USE Northwind;
GO
SELECT
	YEAR(OrderDate) AS years,
	COUNT(*) AS order_per_year
FROM Orders
GROUP BY YEAR(OrderDate)
ORDER BY years ASC;