SELECT
MAX(EmployeeTotalSales.Total) AS TopSales,
EmployeeTotalSales.FullName
FROM (SELECT
        Employee.FirstName || ' ' || Employee.LastName FullName,
        SUM(Invoice.Total) Total
    FROM Employee
    JOIN Customer
        ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Employee.EmployeeId
    ) AS EmployeeTotalSales;