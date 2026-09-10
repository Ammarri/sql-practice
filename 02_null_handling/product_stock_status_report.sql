--Фінансовий відділ просить звіт по товарах: назва, ціна і мітка запасу. Якщо товару немає на складі - "Відсутній", якщо менше 10 одиниць — "Критичний залишок", якщо 10 і більше — "В наявності". 
--Відсортувати: спочатку критичні, потім відсутні, потім решта

USE Northwind;
GO
SELECT 
	ProductName AS [Назва товару],
	UnitPrice AS [Ціна],
	CASE 
		WHEN UnitsInStock IS NULL OR UnitsInStock = 0 THEN 'Відсутній'--відсутній = 0 або NULL
		WHEN UnitsInStock < 10 THEN 'Критичний залишок' 
		ELSE 'В наявності'
	END AS [Мітка запасу]
FROM Products
ORDER BY  
	CASE 
		WHEN UnitsInStock IS NULL OR UnitsInStock = 0 THEN 2 
		WHEN UnitsInStock < 10 THEN 1 
		ELSE 3 
	END;-- ASC 1,2,3