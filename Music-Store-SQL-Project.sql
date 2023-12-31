/* Query 1 */
SELECT
  p.Name,
  COUNT(pt.PlaylistId * t.TrackId) AS Numbers
FROM Playlist p
JOIN PlaylistTrack pt
  ON pt.PlaylistId = p.PlaylistId
JOIN Track t
  ON t.TrackId = pt.TrackId
GROUP BY p.Name
ORDER BY Numbers DESC;

/* Query 2 */
SELECT
  e.LastName,
  COUNT(CustomerId) NumberOfCustomer
FROM Employee e
JOIN Customer c
  ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
ORDER BY 1;

/* Query 3 */
 
SELECT
  BillingCountry,
  SUM(il.UnitPrice * il.Quantity) Reveune
FROM Invoice i
JOIN InvoiceLine il
  ON il.InvoiceId = i.InvoiceId
GROUP BY 1
ORDER BY 2 DESC;




/* Query 4 */
SELECT
  strftime('%Y', i.InvoiceDate),
  SUM(il.UnitPrice * il.Quantity) Revenue
FROM Invoice i
JOIN InvoiceLine il
  ON il.InvoiceId = i.InvoiceId
WHERE BillingCountry LIKE "%USA%"
GROUP BY 1;
