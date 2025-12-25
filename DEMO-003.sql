select CustID, SUM(Total) as TotalRevenue
FROM SALEORDER 
GROUP BY CustID
ORDER BY CustID;