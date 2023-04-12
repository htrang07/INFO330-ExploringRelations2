SELECT t.TrackId AS TrackId, t.Name AS TrackName, t.Composer AS TrackComposer
FROM tracks as t
JOIN invoice_items as ii ON t.TrackId=ii.TrackId;