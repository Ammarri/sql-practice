-- Northwind, Products: вибрати ProductName, UnitPrice, UnitsInStock і розрахувати загальну вартість запасів на складі(total stock value)
USE Northwind;
GO
SELECT
	ProductName,
	UnitPrice,
	UnitsInStock,
	UnitPrice*UnitsInStock AS total_stock_value
FROM Products;