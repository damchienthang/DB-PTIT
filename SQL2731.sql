select HomeTeam, AVG(HomeAttendance) as Avg_Home_Attendance, AwayTeam, AVG(AwayAttendance) as Avg_Away_Attendance
from TeamStats
GROUP BY HomeTeam, AwayTeam;