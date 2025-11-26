SELECT p.name AS product, SUM(oi.quantity) AS total_sold,
       SUM(oi.line_total) AS revenue
FROM OrderItem oi
JOIN Product p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue DESC;
