--HR-відділ готує внутрішню презентацію і просить список співробітників у форматі "Прізвище Ім'я (Посада) — стаж X місяців"
--відсортований так, щоб найдовший стаж був першим
USE Northwind;
GO
SELECT CONCAT(LastName,' ',FirstName,' (',Title,') ','— стаж ', DATEDIFF(MONTH,HireDate,GETDATE()),' місяців') AS [Прізвище Ім'я (Посада) — стаж X місяців]
FROM Employees
ORDER BY DATEDIFF(MONTH,HireDate,GETDATE()) DESC;