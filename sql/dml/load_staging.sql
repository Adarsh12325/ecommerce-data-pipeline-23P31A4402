-- Load customers into staging
INSERT INTO staging.customers
SELECT *
FROM staging.customers_temp;

-- Load products
INSERT INTO staging.products
SELECT *
FROM staging.products_temp;

-- Load orders
INSERT INTO staging.orders
SELECT *
FROM staging.orders_temp;
