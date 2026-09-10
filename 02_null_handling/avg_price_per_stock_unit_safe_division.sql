--Northwind, Products: розрахувати середню ціну за одиницю запасу для кожного товару. Захистити запит від ділення на нуль
USE Northwind;
GO
SELECT 
	ProductName AS [Назва товару],
	CAST(UnitPrice / NULLIF(UnitsInStock,0) AS decimal(10,2)) AS [Ціна за одиницю запасу] --перетворення 0 в NULL, щоб запобігти помилці ділення на 0
	FROM Products;