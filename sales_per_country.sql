SELECT
Invoice.BillingCountry Country,
ROUND(SUM(Invoice.Total), 2) TotalSales
FROM
Invoice
GROUP BY BillingCountry;