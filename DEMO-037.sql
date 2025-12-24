select s.OrderID, c.CustomerName, s.OrderDate, s.TotalAmount
from Customer c 
JOIN SaleOrder s on s.CustID = c.CustID
ORDER BY s.OrderID;