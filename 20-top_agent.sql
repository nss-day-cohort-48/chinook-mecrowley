SELECT
MAX(EmployeeTotalSales.Total) AS TopSales,
EmployeeTotalSales.FullName SalesAgent
FROM (SELECT
        Employee.FirstName || ' ' || Employee.LastName FullName,
        ROUND(SUM(Invoice.Total), 2) Total
    FROM Employee
    JOIN Customer
        ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Employee.EmployeeId
    ) AS EmployeeTotalSales;