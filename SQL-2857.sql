select p.company_name, d.dept_name,
AVG(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END)*100.0 as female_percentage
FROM companies p 
JOIN departments d on d.company_id = p.company_id 
JOIN employees e on e.dept_id = d.dept_id
GROUP BY p.company_name, d.dept_name
HAVING female_percentage >= 60
ORDER BY female_percentage DESC, d.dept_name;