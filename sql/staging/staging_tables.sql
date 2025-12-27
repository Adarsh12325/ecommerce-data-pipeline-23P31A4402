CREATE TABLE staging.customers (
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE staging.products (
    product_id INT,
    product_name TEXT,
    price NUMERIC
);

CREATE TABLE staging.transactions (
    transaction_id INT,
    customer_id INT,
    transaction_date DATE,
    payment_method TEXT
);

CREATE TABLE staging.transaction_items (
    transaction_item_id INT,
    transaction_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC,
    line_total NUMERIC
);
