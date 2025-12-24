UPDATE EMPLOYEE
set Salary = CASE 
when Dept = 'IT' then Salary*1.1
else Salary*1
end;