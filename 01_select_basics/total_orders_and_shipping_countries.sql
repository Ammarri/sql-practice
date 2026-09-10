--Відділ логістики хоче одним запитом дізнатися:скільки всього замовлень обробила компанія, і в скільки різних країн здійснювалась доставка
USE Northwind;
GO
SELECT 
	COUNT(*) AS total_orders, --або COUNT(OrderID)
	COUNT(DISTINCT ShipCountry) AS unique_countries
FROM Orders;