-- Перевірити узгодженість між таблицями Customers і Orders: знайти клієнтів без замовлень і замовлення без клієнта одним запитом. 
-- Додати стовпець статус який пояснює до якої групи належить рядок

USE Northwind;
GO
SELECT
	c.CustomerID,
	o.OrderID, 
	CASE
		WHEN c.CustomerID IS NULL THEN 'Order without client'
		WHEN o.OrderID IS NULL THEN 'Client without order'
	END AS [Status]
FROM Customers AS c
	FULL OUTER JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL 
   OR o.OrderID IS NULL;