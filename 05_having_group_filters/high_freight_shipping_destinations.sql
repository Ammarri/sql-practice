-- Логістика просить виявити "важкі" напрямки доставки - країни, куди сумарний фрахт перевищує $1000, відсортувати від найдорожчої
USE Northwind;
GO
SELECT
	ShipCountry AS destination_country,
	SUM(Freight) AS sum_freight
FROM Orders
GROUP BY ShipCountry
HAVING SUM(Freight) > 1000
ORDER BY sum_freight DESC;