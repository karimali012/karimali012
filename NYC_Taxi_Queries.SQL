
SELECT 
    DATE(field2) AS trip_date,
    COUNT(*) AS total_trips,
    ROUND(SUM(CAST(field17 AS REAL)), 2) AS total_revenue
FROM [NYC_Taxi_Cleaned ]
WHERE field2 != 'tpep_pickup_datetime'
GROUP BY trip_date
ORDER BY total_revenue DESC
LIMIT 5;