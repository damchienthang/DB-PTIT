select t.* 
from Teaches t
join Instructor i on i.username = t.username
ORDER BY i.lname desc
LIMIT 2;