--Northwind, Products: вибрати ProductName, UnitPrice і розрахувати ціну зі знижкою 15%. Округлити до двох знаків після коми
USE Northwind;
GO
SELECT
	ProductName,
	UnitPrice,
	CAST(UnitPrice*(1-0.15) AS decimal(10,2)) AS discounted_price
FROM Products;