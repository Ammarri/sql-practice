--Northwind, Products: відсортувати товари за ціною від надорожчого
USE Northwind;
GO
SELECT
	ProductName,
	UnitPrice
FROM Products	
ORDER BY UnitPrice DESC;

--відсортувати за ціною від найдешевшого товару
USE Northwind;
GO
SELECT
	ProductName,
	UnitPrice
FROM Products
ORDER BY UnitPrice ASC;--можна не писати ASC(йде за замовчанням) 