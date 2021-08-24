SELECT
COUNT(InvoiceId) AS InvoiceTotals,
BillingCountry AS Country
FROM Invoice
GROUP BY BillingCountry;