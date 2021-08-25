SELECT
Track.Name TrackName,
COUNT(InvoiceLine.TrackId) TracksSold
FROM Track
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE Invoice.InvoiceDate LIKE '%2013%'
GROUP BY TrackName
ORDER BY TracksSold DESC;