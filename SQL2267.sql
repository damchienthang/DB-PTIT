select si.student_id, si.name 
from student_info si 
join student_disability_accommodations sda on sda.student_id = si.student_id
GROUP BY si.student_id, si.name 
HAVING COUNT(sda.student_id) > 1;