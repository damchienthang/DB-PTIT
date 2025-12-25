select customer_id 
from Customer 
GROUP BY customer_id
HAVING COUNT(distinct product_key) = (select COUNT(*) from Product);