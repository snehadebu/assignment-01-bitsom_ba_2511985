-- Customers Table
CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    price INTEGER NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    sales_rep_id TEXT PRIMARY KEY,
    sales_rep_name TEXT NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT NOT NULL,
    sales_rep_id TEXT,
    order_date TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id TEXT NOT NULL,
    product_id TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    total_amount INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT DATA (minimum 5 rows per table)

INSERT INTO customers VALUES
('CUST001','Rahul Sharma','Mumbai'),
('CUST002','Amit Das','Kolkata'),
('CUST003','Priya Singh','Delhi'),
('CUST004','Neha Verma','Mumbai'),
('CUST005','Rohit Roy','Pune');

INSERT INTO products VALUES
('P001','Laptop',50000),
('P002','Phone',20000),
('P003','Headphones',2000),
('P004','Keyboard',1500),
('P005','Mouse',800);

INSERT INTO sales_reps VALUES
('S001','Raj'),
('S002','Simran'),
('S003','Arjun'),
('S004','Meena'),
('S005','Vikas');

INSERT INTO orders VALUES
('ORD001','CUST001','S001','2023-01-01'),
('ORD002','CUST002','S002','2023-02-01'),
('ORD003','CUST003','S003','2023-03-01'),
('ORD004','CUST004','S004','2023-04-01'),
('ORD005','CUST005','S005','2023-05-01');

INSERT INTO order_items (order_id, product_id, quantity, total_amount) VALUES
('ORD001','P001',1,50000),
('ORD002','P002',2,40000),
('ORD003','P003',3,6000),
('ORD004','P004',2,3000),
('ORD005','P005',5,4000);
