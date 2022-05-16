SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur' OR 
	last_name REGEXP 'ey$|on$|^my|se|b[ru]'