select s.OrderID, c.CustomerName
from SALEORDER s
JOIN CUSTOMER c on c.CustID = s.CustID
ORDER BY s.OrderID;