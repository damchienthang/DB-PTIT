select v.name 
from vessels v 
join voyages vo on vo.vessel_id = v.id 
where vo.region = 'Arctic' and vo.cargo_weight > 5000;