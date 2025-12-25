select HomeTeam, AVG(HomeAttendance) as Avg_Home_Attendance 
from TeamStats 
GROUP BY HomeTeam
ORDER BY Avg_Home_Attendance DESC, HomeTeam ASC;