-- Total Revenue
SELECT SUM(total_amount) FROM warehouse.fact_sales;

-- Revenue by Product
SELECT p.product_name, SUM(f.total_amount)
FROM warehouse.fact_sales f
JOIN warehouse.dim_product p
ON f.product_key = p.product_key
GROUP BY p.product_name;

-- Monthly Sales Trend
SELECT date_trunc('month', order_date), SUM(total_amount)
FROM warehouse.fact_sales
GROUP BY 1
ORDER BY 1;
