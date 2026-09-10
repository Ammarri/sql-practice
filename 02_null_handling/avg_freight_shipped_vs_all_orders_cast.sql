--Керівник просить середній фрахт (вартість доставки замовлення) по відправлених замовленнях
--і середній фрахт по всіх замовленнях включно з невідправленими (де Freight відсутній - вважати 0) 
USE Northwind;
GO
SELECT
	CAST(AVG(ISNULL(Freight,0)) AS decimal(10,2)) AS [Фрахт по всіх замовленнях],
	CAST(AVG(
		CASE 
			WHEN (ShippedDate) IS NOT NULL THEN Freight 
			ELSE NULL                                                 -- avg не врахує NULL; Можна без ELSE(якщо умову WHEN не виконано за замовчуванням поверне NULL)
		END) AS decimal(10,2)) AS [Фрахт по відправлених замовленнях]
FROM Orders;