insert into VipCustomer(CustID, CustomerName, City, TotalSpent2024)
select c.CustID, c.CustomerName, c.City, SUM(s.TotalAmount)
from Customer c 
join SaleOrder s on s.CustID = c.CustID
where s.OrderDate >= '2024-01-01' and s.OrderDate <= '2024-12-31'
GROUP BY c.CustID, c.CustomerName, c.City
HAVING SUM(s.TotalAmount) >= 2000;