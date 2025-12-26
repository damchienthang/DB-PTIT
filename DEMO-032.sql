UPDATE Customer 
SET Tier = 'TOP_CITY'
WHERE CustID in (
  SELECT CustID
  FROM (
    SELECT 
      c.CustID,
      c.City,
      SUM(p.Amount) as total_payment,
      MAX(SUM(p.Amount)) OVER (PARTITION BY c.City) as max_in_city
    FROM Customer c 
    JOIN SaleOrder s ON s.CustID = c.CustID
    JOIN Payment p ON p.OrderID = s.OrderID
    WHERE p.status = 'PAID'
    GROUP BY c.CustID, c.City
  ) AS city_totals
  WHERE total_payment = max_in_city
);