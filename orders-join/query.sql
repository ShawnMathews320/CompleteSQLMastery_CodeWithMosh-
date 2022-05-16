SELECT order_id, o.product_id, name, quantity, o.unit_price
FROM order_items o
Join products p
	ON o.product_id = p.product_id