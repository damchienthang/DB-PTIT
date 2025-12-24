select t.*, c.title
from Teaches t 
JOIN Class c on c.dept = t.dept and c.number = t.number
ORDER BY t.username ASC
LIMIT 2;