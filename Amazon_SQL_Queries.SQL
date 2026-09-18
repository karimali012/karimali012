SELECT field2 AS product_id, COUNT(*) AS total_reviews, ROUND(AVG(CAST(field7 AS REAL)), 2) AS average_score
FROM Amazon_Sales_Cleaned WHERE field2 != 'ProductId' GROUP BY field2 HAVING total_reviews >= 50 ORDER BY average_score DESC, total_reviews DESC LIMIT 5;
SELECT field3 AS user_id, COUNT(*) AS total_purchases FROM Amazon_Sales_Cleaned WHERE field3 != 'UserId' GROUP BY field3 ORDER BY total_purchases DESC LIMIT 5;
SELECT STRFTIME('%Y', field11) AS review_year, COUNT(*) AS total_reviews_per_year, ROUND(AVG(CAST(field7 AS REAL)), 2) AS average_yearly_score
FROM Amazon_Sales_Cleaned WHERE field11 != 'Clean_Date' AND review_year IS NOT NULL GROUP BY review_year ORDER BY review_year DESC;