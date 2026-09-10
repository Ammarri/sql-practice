--pubs, titles: скільки книг у базі? Скільки мають заповнену ціну 
USE pubs;
GO 
SELECT COUNT (*) AS count_books, COUNT (price) AS with_price
FROM titles;