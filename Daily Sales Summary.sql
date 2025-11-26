CREATE VIEW vw_daily_sales AS
SELECT DATE(order_date) AS sale_date,
       COUNT(order_id) AS total_orders,
       SUM(total_amount) AS total_sales
FROM ordertable
GROUP BY DATE(order_date)
ORDER BY sale_date;
