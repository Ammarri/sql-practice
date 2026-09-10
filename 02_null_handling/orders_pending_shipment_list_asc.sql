--Northwind, Orders: вивести замовлення, які досі не відправлені, відсортувати за найдавнішими.
--Відобразити скільки днів чекає на відправку кожне замовлення
USE Northwind;
GO
SELECT 
	OrderID,
	CustomerID,
	OrderDate,
	DATEDIFF(DAY,OrderDate,GETDATE()) AS DaysDelayed
FROM Orders 
WHERE ShippedDate IS NULL
ORDER BY OrderDate;