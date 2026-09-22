-- Підготувати звіт по менеджерах: повне ім'я менеджера, кількість унікальних клієнтів з якими він працював, кількість замовлень і загальний фрахт. 
-- Відсортувати за кількістю замовлень від найбільшого

-- o.EmployeeID	може бути NULL, перевірка потенційно втрачених менеджерів
USE Northwind;
GO
SELECT COUNT(*) AS count_null
FROM Orders
WHERE EmployeeID IS NULL;

-- Основний запит: 
SELECT 
	e.EmployeeID AS [ID],						
	e.LastName + ' ' + e.FirstName AS [Менеджер],
	COUNT(DISTINCT o.CustomerID) AS [Унікальні клієнти],
	COUNT(o.OrderID) AS [Замовлення, шт],
	SUM(o.Freight) AS [Загальний фрахт, грн]
FROM Employees AS e
	INNER JOIN Orders AS o				-- отримано CustomerID, OrderID, Freight 
	ON e.EmployeeID = o.EmployeeID		-- тільки рядки замовлень, де є менеджер; менеджерів без замовлень в звіт не включала 
GROUP BY e.EmployeeID, e.LastName + ' ' + e.FirstName
ORDER BY [Замовлення, шт] DESC;