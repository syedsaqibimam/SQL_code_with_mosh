SELECT 
	customer_id,
	first_name,
    last_name
FROM customers
WHERE customer_id IN (SELECT o.customer_id
					FROM order_items oi
                    JOIN orders o USING (order_id)
                    WHERE product_id = 3)