--Northwind, Products: розрахувати підсумкову вартість запасів для кожного товару на складі. 
--Якщо кількість відсутня - вважати як 0 
USE Northwind;
GO
SELECT 
	ProductName AS product,
	UnitPrice*ISNULL(UnitsInStock,0) AS total_value --перевірка чи потрібен захист від Null: Products - Alt/F1:[UnitsInStock] Nullable = yes 
FROM Products;