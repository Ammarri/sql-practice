-- Підготувати повний звіт по замовленнях: номер замовлення, дата, назва клієнта, повне ім'я менеджера і країна доставки.
-- Відсортувати за датою від найновішого

USE Northwind;
GO
SELECT
	o.OrderID AS [Order ID],
	o.OrderDate AS [Order date],
	ISNULL(c.CompanyName, '-') AS Company,					-- заміна NULL на '-' для читабельності звіту
	ISNULL(e.LastName + ' ' + e.FirstName, '-') AS Manager, -- заміна NULL на '-' для читабельності звіту
	o.ShipCountry AS [Delivery country]
FROM Orders AS o
	LEFT JOIN Customers AS c								-- ВСІ замовлення внесено, навіть якщо буде NULL в клієнті та менеджері  
	ON o.CustomerID = c.CustomerID							-- альт. INNER JOIN з попередньою перевіркою на NULL
	LEFT JOIN Employees AS e
	ON o.EmployeeID = e.EmployeeID
ORDER BY [Order date] DESC;