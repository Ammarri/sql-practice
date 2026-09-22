-- Знайти всі пари співробітників які працюють в одному місті. 
-- Кожна пара має з'явитись один раз (не двічі в різному порядку). Відсортувати за містом.

USE Northwind;
GO
SELECT 
	e.City, 
	e.LastName + ' ' + e.FirstName + ' , ' + pair.LastName + ' ' + pair.FirstName AS [Employee pairs]
FROM Employees AS e
	INNER JOIN Employees AS pair				-- залишились тільки співробітники, у яких є пара/и з їх міста
	ON e.City = pair.City
	AND e.EmployeeID > pair.EmployeeID			-- 5>1 проходить, 1<5 ні; <> прибрало б посилання тільки на себе
Order By e.City;