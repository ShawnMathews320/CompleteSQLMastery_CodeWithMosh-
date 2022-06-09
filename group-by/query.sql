SELECT 
	date,
    pm.name AS 'payment method',
    SUM(p.amount) AS amount
FROM payments p 
JOIN payment_methods pm
	ON payment_method = payment_method_id
 GROUP BY date, payment_method
 ORDER BY date