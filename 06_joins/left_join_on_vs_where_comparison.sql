-- Всі клієнти і тільки їхні замовлення до США;
USE Northwind;
GO
SELECT
	c.CustomerID,
	o.OrderID
FROM Customers AS c
	LEFT JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
	AND o.ShipCountry = 'USA'			-- всі клієнти залишаться у списку (з NULL, якщо замовленя не в США)
ORDER BY o.OrderID DESC;

-- Тільки клієнти у яких є замовлення до США
SELECT
	c.CustomerID,
	o.OrderID
FROM Customers AS c
	LEFT JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
WHERE o.ShipCountry = 'USA'				-- WHERE після LEFT JOIN відсіче всі NULL (результат аналогічний INNER JOIN)
ORDER BY c.CustomerID;