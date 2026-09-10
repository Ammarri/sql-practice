--Маркетинг хоче список клієнтів з Німеччини, Австрії або Швейцарії — це DACH-регіон для нової кампанії. 
--Вивести ID клієнта, назву компанії та країну, відсортувати за країною, потім за назвою компанії.
USE Northwind;
GO
SELECT  CustomerID,CompanyName,Country
FROM Customers
WHERE Country IN ('Germany','Austria','Switzerland') --= OR
ORDER BY Country ASC,CompanyName ASC;