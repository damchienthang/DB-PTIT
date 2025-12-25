select c.CustomerName, 
  IFNULL(ROUND(SUM(CASE WHEN p.Status = 'PAID' THEN s.Total ELSE 0 END), 2), 0) as PaidTotal
from CUSTOMER c
LEFT JOIN SALEORDER s on s.CustID = c.CustID
LEFT JOIN PAYMENT p on p.OrderID = s.OrderID
GROUP BY c.CustomerName
ORDER BY c.CustomerName;