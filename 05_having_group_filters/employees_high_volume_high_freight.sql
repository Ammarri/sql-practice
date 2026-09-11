-- Потрібно виявити менеджерів із нерівномірним навантаженням: тих, хто оформив більше 30 замовлень за весь час,
-- і при цьому середній фрахт на замовлення перевищує $60
USE Northwind;
GO
SELECT
	EmployeeID,
	COUNT(*) AS total_orders,
	CAST(AVG(Freight) AS decimal(10,2)) AS avg_freight
FROM Orders
GROUP BY EmployeeID
HAVING COUNT(*) > 30
   AND AVG(Freight) > 60
ORDER BY avg_freight DESC; -- видно де найдорожча доставка