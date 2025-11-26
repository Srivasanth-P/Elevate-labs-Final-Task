CREATE VIEW vw_product_sales AS
SELECT p.name AS product_name,
       SUM(oi.quantity) AS units_sold,
       SUM(oi.line_total) AS total_revenue
FROM OrderItem oi
JOIN Product p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC;
