UPDATE Payment
SET Status = 'PAID', PaidAt = '2025-01-01'
WHERE OrderID in (
  SELECT o.OrderID
  FROM OrderItem o 
  JOIN Product p on p.PID = o.PID
  GROUP BY o.OrderID
  HAVING SUM(o.Qty * p.Price) >= 500
);