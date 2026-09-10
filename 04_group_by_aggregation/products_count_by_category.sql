--Керівник хоче знати, скільки товарів у кожній категорії. Відсортувати від найбільшої категорії до найменшої

--ВАР 1. *- кількість всіх рядків, беремо його ЗАВЖДИ для підрахунку сутностей (товарів, клієнтів, замовлень)
-- Гарантує, що якщо товар існує в базі, він буде порахований, незалежно від того, наскільки заповнені його характеристики
USE Northwind;
GO
SELECT
	CategoryID,
	COUNT(*) AS total_products
FROM Products
GROUP BY CategoryID
ORDER BY total_products DESC;--найбільша категорія по кількості товарів в ній!

--ВАР 2. Ігнорує NULL, беремо тільки коли бізнес-логіка прямо вимагає порахувати кількість заповнених фактів (напр. товари з ціною), а не кількість рядків
USE Northwind;
GO
SELECT
	CategoryID,
	COUNT(ProductID) AS total_products
FROM Products
GROUP BY CategoryID
ORDER BY total_products DESC; 
