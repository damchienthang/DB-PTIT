select u.union_status, w.incident_year, SUM(w.incidents) as total_incidents 
from union_status u 
join workplace_safety_incidents w on w.union_status_id = u.id 
join construction_sectors c on c.sector_id = w.sector_id
where w.incident_year IN(2021, 2022)
GROUP BY u.union_status, w.incident_year
ORDER BY u.union_status, w.incident_year asc;