select s.SID, s.SName 
from Supplier s 
join Supply su on su.SID = s.SID 
join Product p on p.PID = su.PID
join Category c on c.CatID = p.CatID
where c.CatName = 'Electronics'
GROUP BY s.SID, s.SName
HAVING COUNT(s.SID) >= 2;