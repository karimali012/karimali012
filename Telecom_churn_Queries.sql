SELECT 
COUNT(*) AS total_customers,
SUM(churn_numeric) AS churned_customers,
ROUND((CAST(SUM(churn_numeric) AS REAL) / COUNT(*)) * 100, 2) AS churn_rate_percentage
FROM telco_customer_churn_cleaned;
SELECT
SUM(monthlycharges) AS total_monthly_revenue,
    SUM(CASE WHEN churn_numeric = 1 THEN monthlycharges ELSE 0 END) AS lost_monthly_revenue,
    ROUND((SUM(CASE WHEN churn_numeric = 1 THEN monthlycharges ELSE 0 END) / SUM(monthlycharges)) * 100, 2) AS revenue_loss_percentage
FROM telco_customer_churn_cleaned;
SELECT 
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_numeric) AS churned_customers,
    ROUND((CAST(SUM(churn_numeric) AS REAL) / COUNT(*)) * 100, 2) AS churn_rate
FROM telco_customer_churn_cleaned
GROUP BY contract
ORDER BY churn_rate DESC;
SELECT 
    internetservice,
    COUNT(*) AS total_customers,
    SUM(churn_numeric) AS churned_customers,
    ROUND((CAST(SUM(churn_numeric) AS REAL) / COUNT(*)) * 100, 2) AS churn_rate
FROM telco_customer_churn_cleaned
GROUP BY internetservice
ORDER BY churn_rate DESC;