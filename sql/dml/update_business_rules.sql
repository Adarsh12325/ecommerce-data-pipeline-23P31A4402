-- Apply discount for bulk purchases
UPDATE production.orders
SET total_amount = total_amount * 0.95
WHERE quantity >= 10;

-- Standardize city names
UPDATE production.customers
SET city = INITCAP(city);
