-- Load dimension customer
INSERT INTO warehouse.dim_customer
SELECT customer_id,
       customer_name,
       city
FROM production.customers;

-- Load dimension product
INSERT INTO warehouse.dim_product
SELECT product_id,
       product_name,
       category
FROM production.products;

-- Load fact table
INSERT INTO warehouse.fact_sales
SELECT o.order_id,
       c.customer_id AS customer_key,
       p.product_id AS product_key,
       o.quantity,
       o.total_amount,
       o.order_date
FROM production.orders o
JOIN production.customers c
    ON o.customer_id = c.customer_id
JOIN production.products p
    ON o.product_id = p.product_id;
