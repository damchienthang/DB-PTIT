select p.name as provider_name, COUNT(pg.date) as days_active,
SUM(pg.power_generated) as total_power_generated
FROM provider p 
JOIN region r on r.id = p.region_id
JOIN renewable_source rs on rs.provider_id = p.id
JOIN power_generation pg on pg.source_id = rs.id 
WHERE rs.name = 'Solar'
AND lower(r.name) LIKE '%east%'
AND pg.date between '2021-02-01' and '2021-05-31'
GROUP BY p.name 
ORDER BY days_active DESC, total_power_generated DESC
LIMIT 2;