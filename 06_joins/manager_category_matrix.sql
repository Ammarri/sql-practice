-- Потрібно побудувати матрицю планування для аналізу покриття: всі можливі комбінації менеджер плюс категорія товарів. 
-- Вивести повне ім'я менеджера і назву категорії. Порахувати скільки комбінацій вийшло і перевірити чи збігається з реальним числом. 


-- Всі комбінації менеджер-категорія (72)
USE Northwind;
GO
SELECT
	e.EmployeeID,
	ctg.CategoryID,
	e.LastName + ' ' + e.FirstName AS Manager,
	ctg.CategoryName AS Category
FROM Employees AS e
	CROSS JOIN Categories AS ctg
ORDER BY e.EmployeeID, ctg.CategoryID;

-- Реальні комбінації менеджер-категорія (72)
SELECT DISTINCT
	e.EmployeeID,
	ctg.CategoryID,
	e.LastName + ' ' + e.FirstName AS Manager,
	ctg.CategoryName AS Category
FROM Employees AS e
	INNER JOIN Orders AS o
	ON e.EmployeeID = o.EmployeeID			-- тільки замовлення з вказаними менеджерами, отримано OrderID
	LEFT JOIN [Order Details] AS od
	ON o.OrderID = od.OrderID				-- отримано ProductID, NULL не буде: PK та CPK
	LEFT JOIN Products AS p
	ON od.ProductID = p.ProductID			-- отримано CategoryID,NULL не буде: CPK та PK
	LEFT JOIN Categories AS ctg				
	ON p.CategoryID = ctg.CategoryID		-- отримано ctg.CategoryName, p.CategoryID може бути NULL якщо не внесли 
ORDER BY e.EmployeeID, ctg.CategoryID;