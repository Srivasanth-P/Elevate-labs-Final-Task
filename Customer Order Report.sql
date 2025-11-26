SELECT o.order_id, c.first_name, c.last_name,
       o.order_date, o.total_amount, o.status
FROM ordertable o
JOIN Customer c ON o.customer_id = c.customer_id;
