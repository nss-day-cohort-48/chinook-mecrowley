SELECT
Employee.FirstName || ' ' || Employee.LastName EmployeeName,
COUNT(Customer.SupportRepId) Customers
FROM
Employee
LEFT JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY EmployeeName;