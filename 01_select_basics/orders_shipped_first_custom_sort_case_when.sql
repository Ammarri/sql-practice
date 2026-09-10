--Northwind, Orders: OrderID, CustomerID, Freight і ShippedDate 
--Відсортувати: рядки з заповненою датою відправки — зверху, по Freight спадання. Рядки де ShippedDate = NULL -знизу

USE Northwind;
GO
SELECT 
	OrderID,
	CustomerID,
	Freight,
	ShippedDate
FROM Orders
ORDER BY 
	CASE WHEN ShippedDate IS NULL THEN 1 ELSE 0 END, -- пріорітет сортування, ASC(0-1): 0 (заповнені дати) зверху, 1 (NULL) -знизу
	Freight DESC;