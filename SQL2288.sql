select s.country 
from SupplyChainViolations s 
JOIN Products p on p.country = s.country 
JOIN ProductTransparency pt on pt.product_id = p.product_id
where s.num_violations >= 1 and pt.recycled_materials = TRUE;