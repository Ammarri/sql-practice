--Northwind: знайти клієнтів, які ніколи не робили замовлень

--ВАР 1. NOT IN, ламається при NULL
USE Northwind;
GO 
SELECT Customers.CustomerID AS [Клієнти без замовлення]
FROM Customers
WHERE Customers.CustomerID NOT IN                       
    (SELECT Orders.CustomerID FROM Orders); --AND+UNKNOWN=UNKNOWN: Хоч один NULL в підзапиті і весь запит поверне 0 рядків, навіть якщо клієнти без замовлень існують

-- Перевірка NULL в Orders
SELECT Orders.CustomerID AS [Кількість NULL в CustomerID]
FROM Orders
WHERE Orders.CustomerID IS NULL;

--ВАР 2. NOT EXISTS, краща альтернатива
SELECT Customers.CustomerID  AS [Клієнти без замовлення 2]
FROM Customers
WHERE NOT EXISTS                                         
    (SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);-- Стійкий до NULL значень у підзапиті    