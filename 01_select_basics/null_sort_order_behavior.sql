--Northwind, Customers: вибрати CustomerID, CompanyName, Region і відсортувати за Region зростання
USE Northwind;
GO
SELECT 
	CustomerID,
	CompanyName,
	Region
FROM CUSTOMERS
ORDER BY Region ASC;-- NULL за замовчуванням на початку (від меншого до більшого)!


--Відсортувати за Region спадання
SELECT 
	CustomerID,
	CompanyName,
	Region
FROM CUSTOMERS
ORDER BY Region DESC;-- NULL за замовчуванням в кінці (від більшого до меншого)!