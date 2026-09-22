-- Фінансовий відділ хоче деталізацію по замовленнях: до кожного рядка потрібна назва товару, кількість, ціна продажу і знижка. 
-- Вивести перші 50 рядків відсортованих за номером замовлення.

USE Northwind;
GO
SELECT TOP 50 
	od.OrderID AS [Order ID],
	p.ProductName AS [Product Name],
	od.Quantity AS Quantity,
	od.UnitPrice AS Price,
	od.Discount AS Discount
FROM [Order Details] AS od             -- назва таблиці з пробілом
	INNER JOIN Products AS p
	ON od.ProductID = p.ProductID      -- od.ProductID входить до Composite PK
ORDER BY [Order ID]; 