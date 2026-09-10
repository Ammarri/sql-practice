--Northwind, Products: вибрати ProductID, ProductName, UnitPrice, UnitsInStock і дати всім стовпцям аліаси у стилі snake_case
USE Northwind;
GO
SELECT
	ProductID AS product_id,
	ProductName AS product_name,
	UnitPrice AS unit_price,
	UnitsInStock AS unit_in_stock
FROM Products;