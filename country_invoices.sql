SELECT
BillingCountry AS Country,
COUNT(InvoiceId) AS InvoiceTotals
FROM Invoice
GROUP BY BillingCountry;