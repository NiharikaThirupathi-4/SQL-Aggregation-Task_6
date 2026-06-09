SELECT 
    YEAR(order_date) AS 'Year',
    EXTRACT(MONTH FROM order_date) AS 'Month',
    SUM(amount) AS 'Revenue',
    COUNT(DISTINCT order_id) AS 'Order Volume'
FROM 
    online_sales
GROUP BY 
    YEAR(order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    'Year' ASC, 
    'Month' ASC;