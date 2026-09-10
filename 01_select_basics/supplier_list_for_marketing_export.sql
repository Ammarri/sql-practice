-- Відділ маркетингу просить список постачальників для нової кампанії: назва компанії, контактна особа, місто, країна і телефон. 
USE Northwind;
GO
SELECT
	CompanyName AS [Назва компанії],
	ContactName AS [Контактна особа],
	City AS [Місто],
	Country AS [Країна],
	Phone AS [Телефон]
FROM Suppliers;
