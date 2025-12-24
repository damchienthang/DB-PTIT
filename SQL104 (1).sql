select c.title
from Class c
join Teaches t on t.dept = c.dept
and t.number = c.number;