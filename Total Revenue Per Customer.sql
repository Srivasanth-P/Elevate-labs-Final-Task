SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer,
       SUM(o.total_amount) AS total_spent
FROM Ordertable o
JOIN Customer c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;
