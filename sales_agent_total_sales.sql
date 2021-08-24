SELECT
Employee.FirstName || ' ' || Employee.LastName AS FullName,
SUM(Invoice.Total) AS TotalSales
FROM Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
GROUP BY FullName;