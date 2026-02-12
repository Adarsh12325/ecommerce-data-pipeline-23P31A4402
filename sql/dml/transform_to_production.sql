-- Insert unique customers
INSERT INTO production.customers
SELECT DISTINCT customer_id,
       customer_name,
       email,
       city,
       created_at
FROM staging.customers
WHERE customer_id IS NOT NULL;

-- Insert products
INSERT INTO production.products
SELECT DISTINCT product_id,
       product_name,
       category,
       price
FROM staging.products;

-- Insert cleaned orders
INSERT INTO production.orders
SELECT order_id,
       customer_id,
       product_id,
       quantity,
       total_amount,
       order_date
FROM staging.orders
WHERE total_amount > 0;
