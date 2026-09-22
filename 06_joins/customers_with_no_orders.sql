-- Знайти клієнтів які зареєстровані в базі, але жодного разу не замовляли. Написати запит який покаже тільки таких клієнтів з назвою компанії та країною
USE Northwind;
GO
SELECT 
	c.CustomerID AS [Customer ID],
	c.CompanyName AS [Company],
	c.Country,
	'Без замовлень' AS [Status]          -- доп поле для читабельності 
FROM Customers AS c
	LEFT JOIN Orders AS o
	ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;				 -- anti-join pattern