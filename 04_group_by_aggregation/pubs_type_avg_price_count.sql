--Pubs. Знайти кількість книг і середню ціну по кожному типу.Відсортувати за середньою ціною від найвищої 
USE pubs;
GO
SELECT
	type AS [Тип],
	COUNT(*) AS [Кількість книг],-- всі рядки включно з NULL
	CAST(AVG(price) AS decimal(10,2)) AS [Середня ціна] -- не враховую книги без цін
FROM titles
GROUP BY type
ORDER BY [Середня ціна] DESC;