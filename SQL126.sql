SELECT s.user_id,
  IFNULL(ROUND(
  SUM(CASE WHEN c.action = 'confirmed' then 1 else 0 end)/COUNT(c.action), 2), 0) as confirmation_rate
from Signups s 
left join Confirmations c on c.user_id = s.user_id
GROUP BY s.user_id;