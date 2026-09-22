-- Підготувати зведений звіт по категоріях товарів: назва категорії, кількість товарів у ній та середня ціна.
-- Відсортувати за середньою ціною від найвищої. 

-- Поле CategoryID в Products допускає NULL, перевірити
USE Northwind;
GO
SELECT COUNT(*) AS null_count
FROM Products
WHERE CategoryID IS NULL;

-- Основний запит:
SELECT
	ctg.CategoryName AS [Category Name],
	COUNT(p.ProductID) AS [Total items],
	CAST(AVG(p.UnitPrice) AS decimal(10,2)) AS [Average price]
FROM Categories AS ctg
	INNER JOIN Products AS p
	ON ctg.CategoryID = p.CategoryID
GROUP BY ctg.CategoryName
ORDER BY [Average price] DESC;