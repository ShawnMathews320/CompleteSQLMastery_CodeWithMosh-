CREATE VIEW clients_balance AS
SELECT 
	client_id,
    name,
    SUM(invoice_total - payment_total) AS Balance
FROM invoices i
JOIN clients c
	USING (client_id)
GROUP BY client_id, name