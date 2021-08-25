SELECT
Track.Name AS Track,
Album.Title AS Album,
Genre.Name AS Genre,
MediaType.Name AS MediaType
FROM Track
JOIN Album
    ON Album.AlbumId = Track.AlbumId
JOIN Genre
    ON Genre.GenreId = Track.GenreId
JOIN MediaType
    ON MediaType.MediaTypeId = Track.MediaTypeId
ORDER BY Track;