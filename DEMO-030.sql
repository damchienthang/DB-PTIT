select c.CustID, c.CustomerName, SUM(s.TotalAmount) as TotalSpent
from Customer c
join SaleOrder s on s.CustID = c.CustID
WHERE s.OrderDate between '2024-01-01' and '2024-12-31'
GROUP BY c.CustID, c.CustomerName
HAVING SUM(s.TotalAmount) >= 1000
and not exists(
  select 1 
  from SaleOrder s2
  where s2.CustID = c.CustID
  and s2.OrderDate between '2024-01-01' and '2024-12-31'
  and s2.Status = 'CANCELLED'
);