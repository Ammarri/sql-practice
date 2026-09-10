--Northwind, Customers: вивести список клієнтів, у яких не заповнений регіон. Скільки таких?
-- ВАР 1
USE Northwind;
GO
SELECT * --неоптимально: превантажує пам'ять, читає всю таблицю, неможливий Index seek
FROM Customers
WHERE Region IS NULL;

--ВАР 2 
SELECT CustomerID, CompanyName, Region -- чистіше, лише потрібні поля
FROM Customers
WHERE Region IS NULL;

--СКІЛЬКИ КЛІЄНТІВ З NULL
SELECT COUNT(*) AS count_null_region
FROM Customers
WHERE Region IS NULL; --60