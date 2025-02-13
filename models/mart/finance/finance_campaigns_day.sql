SELECT 
date_date
, operational_margin - ads_cost as ads_margin
, AOV
, operational_margin
, ads_cost
, ads_impressions
, ads_clicks
, quantity
, revenue
, purchase_cost
, margin
, shipping_fee
, logcost
, ship_cost
 FROM {{ref("finance_days")}} fd
LEFT JOIN
{{ref("int_campaigns_day")}} cd
USING (date_date)
ORDER BY date_date DESC
