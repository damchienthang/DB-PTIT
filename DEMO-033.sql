delete from CustomerArchive
WHERE ArchiveID in (
  SELECT a1.ArchiveID from CustomerArchive a1 
  LEFT JOIN SaleOrder s on s.CustID = a1.CustID
  AND s.OrderDate < '2024-01-01'
  WHERE a1.CustID not in (
    SELECT DISTINCT CustID
    FROM SaleOrder
    WHERE OrderDate >= '2024-01-01'
  )
  GROUP BY a1.ArchiveID, a1.CustID
  HAVING COALESCE(SUM(s.TotalAmount), 0) < 500
);