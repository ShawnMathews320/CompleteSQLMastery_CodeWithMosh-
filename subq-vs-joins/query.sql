SELECT DISTINCT 
	customer_id,
    first_name,
    last_name
FROM customers c
JOIN orders o 
	USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3