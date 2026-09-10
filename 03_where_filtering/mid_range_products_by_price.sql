--Керівник хоче переглянути асортимент товарів середньої цінової категорії: від 15 до 40 включно.
--Вивести назву товару і ціну, сортування від найдешевшого

USE Northwind;
GO
SELECT ProductName, UnitPrice 
FROM Products
WHERE UnitPrice BETWEEN 15 AND 40
ORDER BY UnitPrice ASC;