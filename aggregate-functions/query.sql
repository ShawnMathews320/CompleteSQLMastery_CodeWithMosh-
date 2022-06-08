SELECT
	'First half of 2019' AS 'date range',
	SUM(invoice_total) AS 'total sales',
    SUM(payment_total) AS 'total payments',
    SUM(invoice_total - payment_total) AS 'expected'
FROM invoices
WHERE invoice_date 
	BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT
	'Second half of 2019' AS 'date range',
	SUM(invoice_total) AS 'total sales',
    SUM(payment_total) AS 'total payments',
    SUM(invoice_total - payment_total) AS 'expected'
FROM invoices
WHERE invoice_date 
	BETWEEN '2019-06-30' AND '2020-12-31'
UNION
SELECT
	'total' AS 'date range',
	SUM(invoice_total) AS 'total sales',
    SUM(payment_total) AS 'total payments',
    SUM(invoice_total - payment_total) AS 'expected'
FROM invoices
