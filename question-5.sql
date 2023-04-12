SELECT t.Name, COUNT(t.Name) AS TotalPurchased 
FROM tracks AS t
JOIN invoice_items AS ii ON t.TrackId=ii.TrackId
JOIN invoices as i ON ii.InvoiceId=i.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.Name
ORDER BY TotalPurchased DESC;