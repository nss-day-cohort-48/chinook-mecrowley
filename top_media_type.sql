SELECT
MediaType.Name MediaType,
COUNT(InvoiceLine.TrackId) TracksSold
FROM MediaType
JOIN Track
    ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY MediaType
ORDER BY TracksSold DESC;