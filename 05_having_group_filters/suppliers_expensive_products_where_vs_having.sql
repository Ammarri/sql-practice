-- Знайти постачальників, у яких більше 3 товарів дорожче $20, яка кількість таких товарів (позицій) по кожному 
USE Northwind;
GO
SELECT
	SupplierID,
	COUNT(*) AS products_count   
FROM Products
WHERE UnitPrice > 20		-- 1. одразу відкинула товари дешевше $20
GROUP BY SupplierID			-- 2. групую дані по кожному постачальнику (які види товарів дорожче $20 у нього є) 
HAVING COUNT(*) > 3			-- 3. залишаю постачальників у яких > 3 видів товарів дорожче $20
ORDER BY products_count;

-- Додатковий запит: постачальники, де середня ціна всіх товарів > $20. Чому вони різні?
SELECT
	SupplierID,
	CAST(AVG(UnitPrice) AS decimal(10,2)) AS avg_price
FROM Products
GROUP BY SupplierID			
HAVING AVG(UnitPrice) > 20	-- фільтруємо весь асортимент постачальника, навіть 1 дуже дорогий товар збільшить середню ціну
ORDER BY AVG(UnitPrice);