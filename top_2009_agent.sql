SELECT
MAX(Invoices2009.Total) AS TopSales_2009,
Invoices2009.FullName
FROM (SELECT
        Employee.FirstName || ' ' || Employee.LastName FullName,
        SUM(Invoice.Total) Total
    FROM Employee
    JOIN Customer
        ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    GROUP BY Employee.EmployeeId
    ) AS Invoices2009;