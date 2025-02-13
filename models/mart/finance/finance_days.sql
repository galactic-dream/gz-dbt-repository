SELECT
date_date,
COUNT(orders_id) AS nb_transactions,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(revenue)/COUNT(orders_id)) AS AOV,
ROUND(SUM(margin)) AS margin,
ROUND(SUM(operational_margin)) AS operational_margin,
ROUND(SUM(purchase_cost)) AS purchase_cost,
ROUND(SUM(shipping_fee)) AS shipping_fee,
ROUND(SUM(logcost)) AS log_cost,
SUM(quantity) AS quantity,
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC