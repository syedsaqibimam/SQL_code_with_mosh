SELECT 
	c.customer_id,
	c.first_name,
    c.last_name,
    c.state,
    SUM(oi.unit_price * oi.quantity) AS total_spend
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING(order_id)
WHERE state = 'VA'
GROUP BY customer_id
HAVING total_spend > 100



