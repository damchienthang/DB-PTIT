UPDATE SALEORDER
set Status = 'PAID'
WHERE OrderID in (
  select OrderID from PAYMENT
  where Status = 'PAID'
)
