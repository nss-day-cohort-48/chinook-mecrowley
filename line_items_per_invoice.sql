SELECT
InvoiceId,
COUNT(InvoiceId) AS LineItemCount
FROM InvoiceLine
GROUP BY InvoiceId;