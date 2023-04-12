SELECT employees.FirstName, employees.LastName, invoices.* 
FROM employees 
JOIN customers ON employees.EmployeeId = customers.SupportRepId 
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE employees.Title='Sales Support Agent';