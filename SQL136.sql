select s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) as attended_exams
from Students s 
join Subjects sub
LEFT JOIN Examinations e on e.student_id = s.student_id 
and e.subject_name = sub.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;