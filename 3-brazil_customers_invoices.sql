SELECT FirstName || ' ' || LastName AS FullName,
InvoiceId, InvoiceDate, BillingCountry
FROM Customer
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
WHERE Country='Brazil';