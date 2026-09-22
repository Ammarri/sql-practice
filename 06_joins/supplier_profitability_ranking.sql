-- Скласти рейтинг постачальників за прибутковістю асортименту: назва постачальника, кількість товарів, середня ціна, загальна вартість запасів на складі. 
-- Відсортувати за загальною вартістю від найбільшої. Постачальники без товарів у звіт не включати. 
USE Northwind;
GO
SELECT
	s.CompanyName AS [Постачальник],
	COUNT(p.ProductID) AS [Кіл-ть товарів],							   -- види/артикули
	CAST(AVG(p.UnitPrice) AS decimal(10,2)) AS [Середня ціна, грн],    -- не враховую товари без цін  
	SUM(p.UnitsInStock*p.UnitPrice) AS [Вартість запасів, грн]      
FROM Suppliers AS s
	INNER JOIN Products AS p
	ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName
ORDER BY [Вартість запасів, грн] DESC;