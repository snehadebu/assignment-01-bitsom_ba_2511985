-- Q1: Read customers CSV
SELECT * 
FROM read_csv_auto('datasets/customers.csv');

-- Q2: Read orders JSON
SELECT * 
FROM read_json_auto('datasets/orders.json');

-- Q3: Read products Parquet
SELECT * 
FROM read_parquet('datasets/products.parquet');

-- Q4: Join customers and orders
SELECT 
    c.customer_id,
    o.order_id,
    o.total_amount
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id;

-- Q5: Join all three datasets
SELECT 
    c.customer_id,
    o.order_id,
    p.product_name,
    o.total_amount
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p
ON p.product_id = o.order_id;  -- example join (adjust if needed)
