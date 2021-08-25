SELECT CustomerId, FirstName || ' ' || LastName AS FullName, Country
FROM Customer
WHERE Country!='USA';