SELECT e.FirstName, e.LastName, SUM(i.Total) AS TotalSold
FROM employees AS e
JOIN customers AS c ON e.EmployeeId=c.SupportRepId
JOIN invoices as i ON c.CustomerId=i.CustomerId
WHERE i.InvoiceDate>='2010-01-01' AND i.InvoiceDate < '2010-12-31'
AND e.Title='Sales Support Agent'
GROUP BY e.EmployeeId
ORDER BY SUM(i.Total)DESC
Limit 1; 