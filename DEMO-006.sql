UPDATE EMPLOYEE
SET Salary = Salary * 1.1
WHERE EmpID in (
  select EmpID from SALEORDER
  where Status = 'COMPLETED'
  GROUP BY EmpID
  HAVING SUM(TotalAmount) > 50000
)