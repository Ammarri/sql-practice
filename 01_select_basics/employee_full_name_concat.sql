--Northwind, Employees: склеюємо ім'я та прізвище через пробіл. Аліас — full_name
USE Northwind;
GO
SELECT FirstName + ' ' + LastName AS full_name
FROM Employees;