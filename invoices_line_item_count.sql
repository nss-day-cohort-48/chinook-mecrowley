SELECT
InvoiceId,
COUNT(InvoiceLineId) AS TotalInvoiceLineItems
FROM InvoiceLine
GROUP BY InvoiceId;