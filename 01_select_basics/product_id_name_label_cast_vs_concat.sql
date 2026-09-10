--Northwind, Products: склеїти ProductID і ProductName у форматі "ID: 1 — Chai" 
--Напряму з текстом не склеїти. Помилка на SELECT  'ID: ' + ProductID + ' — ' + ProductName, бо різні типи даних(ProductID INT)
 

--Варіант 1. CONCAT
USE Northwind;
GO
SELECT CONCAT('ID: ', ProductID, ' — ', ProductName) AS product_details
FROM Products;

-- Варіант 2. CAST
USE Northwind;
GO
SELECT 'ID: ' + CAST(ProductID AS VARCHAR(8)) + ' — ' + ProductName AS product_details_2
FROM Products;