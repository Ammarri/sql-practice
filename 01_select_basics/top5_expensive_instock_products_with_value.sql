--П'ять найдорожчих товарів, які є в наявності на складі. Із зазначенням загальної вартості наявного запасу по кожному
USE Northwind;
GO
SELECT TOP 5
	ProductName,
	UnitPrice,
	UnitsInStock,
	UnitPrice * UnitsInStock AS total_value
FROM Products
WHERE UnitsInStock > 0	--є в наявності
ORDER BY UnitPrice DESC;