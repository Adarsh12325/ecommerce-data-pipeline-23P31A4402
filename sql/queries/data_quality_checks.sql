-- Null Check
SELECT COUNT(*) AS null_customer_ids
FROM staging.orders
WHERE customer_id IS NULL;

-- Duplicate Check
SELECT customer_id, COUNT(*)
FROM staging.customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Referential Integrity
SELECT COUNT(*)
FROM staging.orders o
LEFT JOIN staging.customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
