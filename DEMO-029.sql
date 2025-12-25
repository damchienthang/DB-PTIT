select c.CustID, c.CustomerName, SUM(s.TotalAmount) as TotalSpent
from Customer c 
JOIN SaleOrder s on s.CustID = c.CustID
GROUP BY c.CustID, c.CustomerName
HAVING SUM(s.TotalAmount) >= 1000
and exists (
  select 1
  FROM SaleOrder s2
        WHERE s2.CustID = c.CustID
            AND s2.OrderDate BETWEEN '2024-01-01' AND '2024-12-31'
            AND s2.TotalAmount >= 500
);