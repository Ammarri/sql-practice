-- Складний фільтр для звіту.Знайти замовлення за 1997 рік, де виконуються ВСІ умови: 
-- доставка в США або Канаду; сума фрахту більше 30; регіон доставки заповнений, замовлення оформив менеджер з EmployeeID від 1 до 5 включно.
-- Вивести OrderID, CustomerID, країну та регіон доставки, EmployeeID, фрахт. Відсортувати за фрахтом від найдорожчого.

USE Northwind;
GO
SELECT 
	OrderID, 
	CustomerID, 
	ShipCountry, 
	ShipRegion, 
	EmployeeID,
	Freight
FROM Orders
WHERE OrderDate>='1997-01-01' AND OrderDate<'1998-01-01'
	AND ShipCountry IN('Canada','USA')
	AND Freight > 30
	AND ShipRegion IS NOT NULL
	AND EmployeeID BETWEEN 1 AND 5
ORDER BY Freight DESC;