select h.name, h.capacity, COUNT(p.id) as vaccinated 
from hospitals h 
join patient_vaccinations p on p.hospital_id = h.id
where h.location = 'Nairobi'
GROUP BY h.name, h.capacity;