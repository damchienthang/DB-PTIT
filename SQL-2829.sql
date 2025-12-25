SELECT r.lead_researcher
FROM research r 
JOIN gene g ON g.research_id = r.id 
GROUP BY r.lead_researcher
ORDER BY COUNT(g.research_id) DESC
LIMIT 1;