CREATE TABLE warehouse.dim_customers AS
SELECT DISTINCT
    customer_id,
    first_name,
    last_name,
    email
FROM production.customers;

CREATE TABLE warehouse.dim_products AS
SELECT DISTINCT
    product_id,
    product_name,
    price
FROM production.products;

CREATE TABLE warehouse.fact_sales AS
SELECT
    t.transaction_id,
    t.transaction_date,
    t.customer_id,
    ti.product_id,
    ti.quantity,
    p.price,
    ti.quantity * p.price AS total_amount
FROM production.transactions t
JOIN production.transaction_items ti
    ON t.transaction_id = ti.transaction_id
JOIN production.products p
    ON ti.product_id = p.product_id;
