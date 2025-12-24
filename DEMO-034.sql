delete lh from LoyaltyHistory lh
where lh.Reason = 'WELCOME_BONUS'
  and lh.CustID in (
    select s.CustID
    from SaleOrder s
    GROUP BY s.CustID
    having SUM(s.TotalAmount) < 1000
  ) 
  and lh.HistoryID not in (
    select max(lh2.HistoryID)
    from LoyaltyHistory lh2
    where lh2.Reason = 'WELCOME_BONUS'
    and lh2.CustID = lh.CustID
    and lh2.PointsChange = lh.PointsChange
  );
