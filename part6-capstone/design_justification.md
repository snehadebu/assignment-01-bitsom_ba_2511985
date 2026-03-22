## Storage Systems

For this architecture, different storage systems are used based on the specific requirements of each goal. A Data Lake is used as the central storage system to collect and store all raw data from ICU devices, patient records, and hospital systems. This is suitable because it can handle structured, semi-structured, and unstructured data efficiently.

For reporting purposes such as monthly hospital reports, a Data Warehouse is used. It stores cleaned and structured data optimized for analytical queries like bed occupancy and cost analysis. For real-time ICU data streaming, a streaming platform like Kafka is used along with the data lake to handle continuous data ingestion.

For the AI-based natural language query system, a Vector Database is used. It stores embeddings of patient records, allowing semantic search so doctors can query data in plain English. For predicting patient readmission risk, a Machine Learning model is used, which is trained on historical data stored in the data lake and warehouse.

## OLTP vs OLAP Boundary

The OLTP (Online Transaction Processing) system includes hospital systems such as patient records, billing, and real-time ICU data capture. These systems handle day-to-day operations and require high accuracy and fast transaction processing.

The OLAP (Online Analytical Processing) system begins when data is moved from operational systems into the data lake and data warehouse. The data lake stores raw data, while the data warehouse stores processed data for reporting and analysis. The machine learning model and vector database also operate on this analytical layer, using historical data for predictions and semantic queries.

Thus, the boundary between OLTP and OLAP is clearly defined at the point where data is extracted from operational systems and loaded into analytical storage systems.

## Trade-offs

One significant trade-off in this design is between data consistency and system scalability. Using multiple systems such as a data lake, warehouse, and vector database increases flexibility and scalability but can lead to data synchronization challenges. For example, updates in patient records may not immediately reflect in the analytical systems.

To mitigate this, an efficient ETL or data pipeline process can be implemented to ensure regular updates and synchronization between systems. Additionally, real-time streaming can be used for critical data updates to minimize latency.

Another trade-off is system complexity. Using multiple technologies increases maintenance and operational overhead. This can be addressed by using managed cloud services and automation tools to simplify deployment and monitoring.
