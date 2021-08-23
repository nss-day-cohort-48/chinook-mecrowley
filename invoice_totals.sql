SELECT
Invoice.Total,
Customer.FirstName || ' ' || Customer.LastName AS CustomerName,
Customer.Country,
Employee.FirstName || ' ' || Employee.LastName AS EmployeeName
FROM Invoice
JOIN Customer
    ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Customer.LastName;