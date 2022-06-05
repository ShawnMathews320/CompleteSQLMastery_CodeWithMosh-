CREATE TABLE invoices_archived AS 
SELECT
	i.invoice_id,
    i.number,
    c.name AS customer,
    i.invoice_total,
    i.payment_total,
    invoice_date,
    due_date,
    payment_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL