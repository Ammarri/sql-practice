--Фінансовий відділ просить аналіз цін по кожному постачальнику: мінімальну ціну,максимальну, середню і загальну вартість усіх товарів на складі.
--Відсортувати за середньою ціною від найвищої
USE Northwind;
GO
SELECT
	SupplierID,
	MIN(UnitPrice) AS min_price,
	MAX(UnitPrice) AS max_price,
	CAST(AVG(UnitPrice)AS DECIMAL(10,2)) AS avg_price,   --до двох знаків після коми, незаповнені ціни не рахую
	SUM(UnitPrice * ISNULL(UnitsInStock,0)) AS total_value --захист через мінімум один ISNULL обов'язковий,коли є множення Nullable стовпців  
FROM Products
GROUP BY SupplierID
ORDER BY AVG(UnitPrice) DESC;

-- Доп запит: перевірка на кількість NULL 
SELECT 
	ProductID,
	UnitPrice,
	UnitsInStock
FROM Products
WHERE UnitPrice IS NULL OR UnitsInStock IS NULL;
