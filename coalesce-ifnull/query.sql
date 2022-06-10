SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
	COALESCE(phone, 'unknown') AS phone
FROM customers