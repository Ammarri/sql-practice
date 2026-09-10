--Northwind, Employees: склеїти ім'я у форматі "Прізвище, Ім'я". Аліас - formal_name
USE Northwind;
GO
SELECT LastName + ', ' + FirstName AS formal_name
FROM Employees;