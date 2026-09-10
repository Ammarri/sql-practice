--Northwind, Products: вивести назву товару і цінову категорію: до 20 включно - "Економ", від 20 до 50 включно - "Середній", вище 50 - "Преміум"
USE Northwind;
GO
SELECT
	ProductName AS product_name,
	CASE 
		WHEN UnitPrice <= 20 THEN 'Економ'
		WHEN UnitPrice <= 50 THEN 'Середній' 	 
		ELSE 'Преміум'
	END AS price_category
FROM Products;