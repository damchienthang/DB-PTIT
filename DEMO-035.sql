select City,
  SUM(Amount) as TotalRevenue
  from (
  select City, Amount from OnlineOrder
  UNION all
  select City, Amount from StoreOrder
  ) as Total
GROUP BY City 
ORDER BY City;