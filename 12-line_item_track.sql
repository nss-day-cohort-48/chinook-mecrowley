SELECT
InvoiceLine.InvoiceLineId,
Track.Name
FROM InvoiceLine
JOIN Track
    ON InvoiceLine.TrackId = Track.TrackId
ORDER BY InvoiceLine.InvoiceLineId;