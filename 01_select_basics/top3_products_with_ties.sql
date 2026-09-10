--Northwind, Products: вивести топ-3 товари за вартістю запасів 
--Якщо кілька товарів ділять 3-ю позицію з однаковим значенням - включити всіх
USE Northwind;
GO
SELECT TOP 3 WITH TIES -- залишає всі товари з точно таким самим граничним значенням, навть якщо їх більше 3 
	ProductName,
	UnitPrice * UnitsInStock AS total_value
FROM Products
ORDER BY total_value DESC;