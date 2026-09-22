-- Менеджер хоче бачити товари разом з ціною та назвами їхніх категорій — не тільки ID. 
-- Написати звіт, відсортувати за категорією, потім за назвою товару

-- поле CategoryID в Products допускає NULL, перевірити 
USE Northwind;
GO
SELECT COUNT(*) AS null_count
FROM Products
WHERE CategoryID IS NULL;

-- Основний запит:
SELECT
	p.ProductName AS product,
	p.UnitPrice AS price,
	ctg.CategoryName AS category
FROM Products AS p
	INNER JOIN Categories AS ctg
	ON p.CategoryID = ctg.CategoryID
ORDER BY category, product;			  -- аліаси за DRY