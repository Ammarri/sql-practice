-- Менеджер з продажів просить картку товару для каталогу: кожен рядок має виглядати як "Chai: $18.00 / 39 шт. в наявності"

USE Northwind;
GO
SELECT CONCAT (ProductName, ': ', '$', UnitPrice, ' / ', UnitsInStock, ' шт. в наявності') AS product_card 
--UnitPrice DECIMAL, UnitsInStock INT
--CONCAT, бо автоматом конвертує тип даних та формат відображення/ швидше ніж через каст
FROM Products;