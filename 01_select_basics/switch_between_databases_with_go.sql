--Cкрипт, який послідовно переключається між Northwind і pubs і після кожного переключення виводить ім'я бази
USE Northwind;
GO
SELECT DB_NAME();

USE pubs;
GO
SELECT DB_NAME();