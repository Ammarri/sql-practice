-- HR просить список замовлень з іменами менеджерів які їх оформили для оцінки ефективності роботи фахівців 
-- Підготувати звіт: номер замовлення, дата, повне ім'я менеджера (одним полем) та сума фрахту. Відсортувати за менеджером

-- Поле EmployeeID в Orders допускає NULL, перевірити
USE Northwind;
GO
SELECT COUNT(*) AS null_count
FROM Orders
WHERE EmployeeID IS NULL;

-- Основний запит:
SELECT
	o.OrderID AS [Order ID],
	o.OrderDate AS [Order date],
	e.FirstName + ' ' + e.LastName AS Manager,
	o.Freight AS Freight
FROM Orders AS o
	JOIN Employees AS e				-- аналогічно повному написанню (INNER JOIN)
	ON o.EmployeeID = e.EmployeeID
ORDER BY Manager;