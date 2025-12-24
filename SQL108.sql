select t.username, c.dept, c.number
from Teaches t
join Class c on c.dept = t.dept and c.number = t.number
where t.username = 'levy' or t.username = 'djw';