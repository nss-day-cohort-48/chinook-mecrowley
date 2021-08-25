SELECT
InvoiceLine.InvoiceLineId,
Track.Name AS TrackName,
Artist.Name AS ArtistName
FROM InvoiceLine
JOIN Track
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Album
    ON Track.AlbumId = Album.AlbumId
JOIN Artist
    ON Album.ArtistId = Artist.ArtistId
ORDER BY InvoiceLine.InvoiceLineId;