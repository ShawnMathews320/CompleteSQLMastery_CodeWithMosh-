SELECT 
	pm.name AS 'payment method',
    SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
	ON payment_method = payment_method_id
GROUP BY pm.name WITH ROLLUP
