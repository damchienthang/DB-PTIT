select c.company_name, 
  AVG(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END)*100 as female_percentage,
  AVG(CASE WHEN e.gender = 'Male' THEN 1 ELSE 0 END)*100 as male_percentage
FROM companies c 
JOIN departments d on d.company_id = c.company_id
JOIN employees e on e.dept_id = d.dept_id
GROUP BY c.company_name;