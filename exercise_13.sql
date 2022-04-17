DELIMITER $$

CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	SELECT 
		invoice_id,
        number,
        client_id,
        invoice_total,
        payment_total,
        (invoice_total - payment_total) AS balance,
        invoice_date,
        due_date,
        payment_date
	FROM invoices
    WHERE (invoice_total - payment_total) > 0;
END $$

DELIMITER ;

-- CALL get_invoices_with_balance()