SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, Invoice.InvoiceId
FROM Employee
JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
ORDER BY Employee.LastName;