(select u.name as results
FROM Users u 
JOIN MovieRating mr on mr.user_id = u.user_id
GROUP BY u.user_id 
ORDER BY COUNT(mr.movie_id) desc, u.name asc
LIMIT 1
) 
UNION ALL (
  select m.title as results
  FROM Movies m
  JOIN MovieRating mr on mr.movie_id = m.movie_id
  WHERE mr.created_at between '2020-02-01' and '2020-02-29'
  GROUP BY m.movie_id 
  ORDER BY (SUM(mr.rating)/COUNT(mr.user_id)) desc, m.title asc 
  LIMIT 1
)