SELECT
Playlist.Name AS PlaylistName,
COUNT(PlaylistTrack.TrackId) AS PlaylistTrackTotals
FROM Playlist
JOIN PlaylistTrack
    ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY PlaylistName;