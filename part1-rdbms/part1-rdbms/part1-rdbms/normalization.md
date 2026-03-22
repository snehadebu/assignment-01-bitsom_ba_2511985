## Anomaly Analysis

### Insert Anomaly
In the dataset, order and customer information are stored together. For example, in row with order_id "ORD2001", customer_id "CUST028" is recorded along with order details. If a new customer needs to be added but has not placed any order yet, there is no way to insert that customer into the dataset. This is because customer data is dependent on order rows.

### Update Anomaly
Customer information is repeated across multiple rows. For example, customer_id "CUST032" appears in multiple rows such as "ORD2002" and "ORD2037". If any customer detail needs to be updated, all rows must be modified. Missing even one row will result in inconsistent data.

### Delete Anomaly
If an order is deleted, associated customer information may also be lost. For example, if the only order for customer_id "CUST050" (such as order_id "ORD2033") is deleted, then all information about that customer is removed from the dataset.

## Normalization Justification
Keeping all data in a single table may appear simple, but it creates serious data management problems. In the dataset, customer, product, and order information are stored together, which leads to repetition. For example, the same customer_id appears in multiple rows for different orders, causing duplicate storage of customer details.

This design leads to update anomalies. If a customer changes their city, every row containing that customer must be updated. Missing even one row results in inconsistent data. Similarly, product details are repeated across multiple rows, making updates inefficient and error-prone.

Insert anomalies also occur. A new product or customer cannot be added unless an order exists. This limits flexibility in managing data. Delete anomalies are another issue — deleting a single order may remove all information about a product or customer if it appears only once.

By normalizing the database into separate tables such as customers, products, orders, and order_items, redundancy is removed. Each entity is stored only once, and relationships are maintained using foreign keys. This ensures data consistency, reduces errors, and improves scalability.

Therefore, normalization is not over-engineering but a necessary step for maintaining accurate and reliable data in real-world systems.
