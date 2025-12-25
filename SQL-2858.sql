select c.company_name, COUNT(distinct d.dept_id) as dept_count 
from companies c 
JOIN departments d on d.company_id = c.company_id
JOIN employees e on e.dept_id = d.dept_id
WHERE not exists (
  select d2.dept_id 
  FROM departments d2 
  JOIN employees e2 on e2.dept_id = d2.dept_id and e2.gender = 'Female'
  GROUP BY d2.dept_id 
  HAVING COUNT(e2.employee_id) < 1
)
GROUP BY c.company_name;