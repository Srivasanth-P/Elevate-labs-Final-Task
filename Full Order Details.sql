SELECT o.order_id, c.first_name, c.last_name,
       p.name AS product_name, oi.quantity, oi.unit_price, oi.line_total,
       o.order_date
FROM OrderItem oi
JOIN ordertable o ON oi.order_id = o.order_id
JOIN Customer c ON o.customer_id = c.customer_id
JOIN Product p ON oi.product_id = p.product_id
ORDER BY o.order_id;
