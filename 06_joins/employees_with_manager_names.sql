-- HR просить список співробітників з іменем їхнього безпосереднього керівника. 
-- Співробітник без керівника (найвищий в ієрархії) теж має бути у звіті. Відсортувати за прізвищем співробітника

USE Northwind;
GO
SELECT
	e.LastName + ' ' + e.FirstName AS Employee,
	rt.LastName + ' ' + rt.FirstName AS Manager
FROM Employees AS e
	LEFT JOIN Employees AS rt
	ON e.ReportsTo = rt.EmployeeID			-- зв'язую співробітника з керівником
ORDER BY Employee;