--Потрібно виключити зі звіту три конкретних клієнта за їхніми ID: CHOPS, GODOS, THEBI — вони беруть участь в окремій програмі. 
--Показати всіх інших клієнтів (ID, назва компанії, місто). Скільки їх залишилось?
USE Northwind;
GO
SELECT CustomerID, CompanyName, City
FROM Customers
WHERE CustomerID NOT IN ('CHOPS', 'GODOS', 'THEBI');

--Порахувати клінтів явно,не через Massages
USE Northwind;
GO
SELECT COUNT(*) AS count_clients
FROM Customers
WHERE CustomerID NOT IN ('CHOPS', 'GODOS', 'THEBI'); 