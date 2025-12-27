CREATE TABLE production.customers AS
SELECT * FROM staging.customers;

CREATE TABLE production.products AS
SELECT * FROM staging.products;

CREATE TABLE production.transactions AS
SELECT * FROM staging.transactions;

CREATE TABLE production.transaction_items AS
SELECT * FROM staging.transaction_items;
