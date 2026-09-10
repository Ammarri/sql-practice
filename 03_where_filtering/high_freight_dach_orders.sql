-- Комерційний директор просить знайти замовлення, де вантаж (Freight) дорогий (більше $100) і при цьому доставка йде в країни, де у нас є клієнти в DACH-регіоні (Німеччина, Австрія, Швейцарія). 
-- Відсортувати за фрахтом від найдорожчого
USE Northwind;
GO
SELECT 
	OrderID,
	CustomerID,
	ShipCountry,
	Freight
FROM Orders
WHERE Freight>100 
	AND ShipCountry IN('Germany','Austria','Switzerland')
ORDER BY Freight DESC;