select c.CustID, c.CustomerName 
from CUSTOMER c
LEFT JOIN SALEORDER s on s.CustID = c.CustID
where s.OrderID is NULL
ORDER BY c.CustID ASC;