-- Логістика просить деталізацію по рядках замовлень тільки за 1997 рік з усіма зв'язками:
-- номер замовлення, назва клієнта, назва товару, назва категорії товару, кількість і ціна продажу. Відсортувати за клієнтом потім за товаром

USE Northwind;
GO
SELECT										--  в Northwind немає сиріт, інша база - краще завжди додавати ISNULL для читабельності
	od.OrderID AS [№ замовлення],
	c.CompanyName AS [Клієнт],
	p.ProductName AS [Товар],
	ctg.CategoryName AS [Категорія товару],
	od.Quantity AS [Кількість],
	od.UnitPrice AS [Ціна продажу]
FROM [Order Details] AS od
	LEFT JOIN Products AS p
	ON od.ProductID = p.ProductID			-- отримано ProductName
	LEFT JOIN Categories AS ctg
	ON ctg.CategoryID = p.CategoryID		-- отримано CategoryName
	LEFT JOIN Orders AS o					-- отримано OrderDate, перехідна для зв'язку з Customers через CustomerID
	ON od.OrderID = o.OrderID
	LEFT JOIN Customers AS c
	ON o.CustomerID = c.CustomerID			-- отримано CompanyName		
WHERE o.OrderDate >= '1997-01-01' AND o.OrderDate < '1998-01-01'     -- datetime, замовлення за інші роки не потрібні, yyyy-mm-dd (ISO формат)
ORDER BY [Клієнт], [Товар];