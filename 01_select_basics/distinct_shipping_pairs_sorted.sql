--Northwind, Orders:"У яких країнах є клієнти?". Отримати унікальні комбінації ShipCountry і ShipCity, відсортовані за країною, потім за містом.
 USE Northwind;
 GO
 SELECT DISTINCT ShipCountry, ShipCity --діє на всю строку!
 FROM Orders
 ORDER BY ShipCountry, ShipCity;
 
 -- візуально найбільше відправлень до США та Німеччини