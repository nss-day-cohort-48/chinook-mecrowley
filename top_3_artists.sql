SELECT
Artist.Name Artist,
COUNT(InvoiceLine.TrackId) TracksSold
FROM Artist
JOIN Album
    ON Album.ArtistId = Artist.ArtistId
JOIN Track
    ON Track.AlbumId = Album.AlbumId
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Artist
ORDER BY TracksSold DESC
LIMIT 3;