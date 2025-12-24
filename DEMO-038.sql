select s.OrderID, c.CustomerName, s.OrderDate, s.TotalAmount
from Customer c
JOIN SaleOrder s on s.CustID = c.CustID
where c.City = 'Ha Noi'
GROUP BY s.OrderID, c.CustomerName, s.OrderDate, s.TotalAmount
HAVING SUM(s.TotalAmount) > 500;