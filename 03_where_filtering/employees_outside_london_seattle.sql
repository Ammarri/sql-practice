--HR-відділ просить знайти співробітників НЕ з Лондона і НЕ зі Сіетла. Вивести EmployeeID, ім'я, прізвище та місто. Сортування за прізвищем

--ВАР 1.Оптимальний
USE Northwind;
GO
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    City
FROM Employees
WHERE City NOT IN('London','Seattle')  -- =AND
    OR City IS NULL                   --враховую співробітників, в яких не вказано місто
ORDER BY LastName ASC;

--ВАР 2. Важче розширювати
USE Northwind;
GO
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    City
FROM Employees
WHERE (City <> 'London' AND City <> 'Seattle')
   OR City IS NULL
ORDER BY LastName ASC;

--ВАР 3.Складно читати
USE Northwind;
GO
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    City
FROM Employees
WHERE NOT(City='London' OR City='Seattle') --закон де Моргана (NOT + OR = AND)
   OR City IS NULL
ORDER BY LastName ASC;