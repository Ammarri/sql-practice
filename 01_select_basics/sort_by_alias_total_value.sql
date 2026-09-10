--Northwind, Products: выбрати ProductName і розрахувати total_value (загальну вартість товару на складі) 
--Відсортувати за total_value спадання, використавши аліас в ORDER BY.
USE Northwind;
GO
SELECT 
	ProductName,
	UnitPrice*UnitsInStock AS total_value
FROM Products
ORDER BY total_value DESC; --виконується після SELECT