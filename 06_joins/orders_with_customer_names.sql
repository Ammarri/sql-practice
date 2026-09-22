-- Відділу продажів потрібен повний список замовлень з назвами компаній-клієнтів. 
-- Написати запит який покаже номер замовлення, дату, назву компанії та країну клієнта. Відсортувати за датою від найновішого

-- поле CustomerID в Orders допускає NULL, перевірити 
USE Northwind;
GO
SELECT COUNT(*) AS null_count
FROM Orders
WHERE CustomerID IS NULL;

-- Основний запит:
SELECT
	o.OrderID AS [Order ID],
	o.OrderDate AS [Order date],
	c.CompanyName AS Company,
	c.Country AS Country
FROM Orders AS o				 -- завжди аліас с джойнами
	INNER JOIN Customers AS c    -- потрібні тільки збіги
	ON o.CustomerID = c.CustomerID 
ORDER BY [Order date] DESC;       -- або повністю з аліасом таблиці: o.OrderDate     