-- Підготувати звіт по постачальниках: назва постачальника, країна, кількість товарів які він постачає. 
-- Постачальники без товарів теж мають бути у звіті. Відсортувати за кількістю товарів від найбільшого

USE Northwind;
GO
SELECT
	s.SupplierID AS [Supplier ID],
	s.CompanyName AS [Company],
	s.Country,
	COUNT(p.ProductID) AS [Total products]
FROM Suppliers AS s
	LEFT JOIN Products AS p
	ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName, s.Country
ORDER BY [Total products] DESC;