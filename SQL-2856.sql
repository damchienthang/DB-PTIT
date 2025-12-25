select c.company_name, 
ROUND( COUNT(distinct e.employee_id) / COUNT(distinct d.dept_id), 2) as avg_employees_per_department
FROM companies c 
JOIN departments d on d.company_id = c.company_id
JOIN employees e on e.dept_id = d.dept_id 
GROUP BY c.company_name
ORDER BY avg_employees_per_department desc
limit 3;