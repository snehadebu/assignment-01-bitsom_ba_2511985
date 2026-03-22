## Why Data Lake?

A data lake allows storing raw data in its original format, such as CSV, JSON, and Parquet. This is useful because different data sources may have different structures, and a data lake can handle all of them without requiring strict schema definitions.

## Tools Used

DuckDB was used to query the data directly from files. It allows running SQL queries on different file formats without loading data into a database.

## Benefits

- Supports multiple file formats
- No need for data transformation before querying
- Fast and efficient for analytical queries
- Flexible schema handling

## Limitations

- Less strict data validation
- Data quality issues may exist
- Not ideal for transactional systems
