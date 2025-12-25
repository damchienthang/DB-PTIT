select i.project, i.location, i.amount, e.environment, e.social, e.governance
from impact_investments i 
JOIN esg_factors e on e.company_id = i.company_id
WHERE i.sector = 'Renewable Energy'
GROUP BY i.project, i.location, i.amount, e.environment, e.social, e.governance
HAVING (e.environment + e.social + e.governance) > 7.5;