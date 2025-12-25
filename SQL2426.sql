select SUM(subscription_fee) as num_revenue
FROM (
  SELECT subscription_fee, date FROM mobile_subscribers WHERE date between '2025-03-01' and '2025-03-31'
  UNION ALL 
  SELECT subscription_fee, date FROM broadband_subscribers WHERE date between '2025-03-01' and '2025-03-31'
) as total 