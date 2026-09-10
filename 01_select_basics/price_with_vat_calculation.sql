--Northwind, Products: вибрати ProductName, UnitPrice і розрахувати ціну з ПДВ 20%. Округлити до двох знаків після коми для читабельності.
USE Northwind;
GO
SELECT 
	ProductName,
	UnitPrice,
	CAST(UnitPrice * 1.20 AS decimal(10,2)) AS price_with_vat
FROM Products;