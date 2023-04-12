SELECT ii.*, t.Name AS TracksName, ar.Name AS ArtistsName
FROM invoice_items AS ii
JOIN tracks AS t ON ii.TrackId=t.TrackId
JOIN albums AS al ON t.AlbumId=al.AlbumId
JOIN artists AS ar ON al.ArtistId=ar.ArtistId;