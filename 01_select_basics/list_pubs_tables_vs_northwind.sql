--отримати список всіх таблиць бази Northwind
USE Northwind;
GO
SELECT 
	TABLE_SCHEMA,
	TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE';--фільтр,щоб виключити системні таблиці

--отримати список всіх таблиць бази pubs (в одному запиті для порівняння) 
USE pubs;
GO
SELECT
	TABLE_SCHEMA,
	TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE';