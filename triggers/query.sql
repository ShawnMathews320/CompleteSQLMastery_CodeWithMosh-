DELIMITER $$

CREATE TRIGGER payments_after_deletion
AFTER DELETE ON payments
FOR EACH ROW
BEGIN
	UPDATE invoices i
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END $$

DELIMITER ;
