# Write your MySQL query statement below
SELECT V.customer_id,
COUNT(V.customer_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON T.visit_id = V.visit_id
WHERE T.visit_id IS NULL
GROUP BY V.customer_id
ORDER BY count_no_trans;