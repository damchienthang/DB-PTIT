select s.OrderID, c.CustomerName, COUNT(o.OrderID) as TotalLines
from SaleOrder s 
JOIN Customer c on c.CustID = s.CustID
JOIN OrderItem o on o.OrderID = s.OrderID
GROUP BY s.OrderID, c.CustomerName
HAVING COUNT(s.OrderID) >= 2
ORDER BY s.OrderID;