--  Комерційний директор хоче знати які товари жодного разу не були замовлені
USE Northwind;
GO
SELECT
	p.ProductID AS [Product ID],
	p.ProductName AS [Product Name],
	'Не замовляли' AS [Status]
FROM Products AS p
	LEFT JOIN [Order Details] AS od
	ON p.ProductID = od.ProductID
WHERE od.OrderID IS NULL;