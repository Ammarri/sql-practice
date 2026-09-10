--pubs. Менеджер хоче список книг, ціна яких вказана і складає від $5 до $20. Вивести title, type і price. 

USE pubs;
GO
SELECT title, type, price
FROM titles
WHERE price IS NOT NULL        -- ціна не порожня
	AND price BETWEEN 5 AND 20;

--Додатково: окремим запитом знайди книги, де ціна НЕ вказана взагалі
USE pubs;
GO
SELECT title, type, price
FROM titles
WHERE price IS NULL;