--Менеджер з продажу готує прайс-лист для клієнтів. 
--Потрібен список товарів у форматі "назва товару — ціна з ПДВ", відсортований за назвою товару від А до Я.
USE Northwind;
GO
SELECT CONCAT(ProductName, ' — ', CAST(UnitPrice * 1.20 AS DECIMAL(10,2))) AS [Назва товару — Ціна з ПДВ, грн]
FROM Products
ORDER BY ProductName ASC; 