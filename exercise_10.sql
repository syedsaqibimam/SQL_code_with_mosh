SELECT DISTINCT customer_id, first_name, last_name
FROM customers
JOIN orders USING(customer_id)
JOIN order_items USING (order_id)
WHERE product_id = 3