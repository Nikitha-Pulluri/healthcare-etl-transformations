# Resource Onboarding ETL Pipeline (Healthcare Domain)

This repository showcases my ETL transformation skills using Python and Snowflake SQL. The project is inspired by a real-world healthcare resource onboarding system that integrates multiple cloud services and tools to streamline and optimize onboarding operations.

## Project Summary

- **Goal**: Build a scalable and automated onboarding system for healthcare resources.
- **Outcome**: Increased onboarding efficiency by 25% and improved query performance by 30%.

## Tech Stack

- **ETL Tool**: Matillion DPC
- **Cloud Data Warehouse**: Snowflake
- **Orchestration**: Apache Airflow
- **Languages**: Python, SQL
- **Cloud Services**: AWS S3, DynamoDB, Azure DevOps

## ETL Flow

1. **Extract**: Load raw JSON files from S3.
2. **Transform**: Clean, normalize, and aggregate data using SQL and Python.
3. **Load**: Store processed data in Snowflake and DynamoDB.

## Key Features

- Data cleansing and schema validation
- Nested JSON parsing using Python
- Transformation using SQL (e.g., grouping, filtering, deduplication)
- Loading output into Parquet format
- Optional load into DynamoDB for application-level access

## Files Included

- `transformations/transform.py` — Python logic for JSON parsing and cleaning
- `sql/transformations.sql` — SQL for data transformation and aggregation
- `airflow_dag.py` — DAG to orchestrate the workflow
- `README.md` — Project overview and documentation

## Sample Transformations

- Flatten nested JSON structure
- Handle missing or null values
- Group by department and summarize total onboarded resources
- Apply business rules such as filtering inactive resources
- Create aggregated views per warehouse/region

## Setup Instructions

1. Clone this repo
2. Configure Snowflake and Matillion environment
3. Update your credentials and path in Python script
4. Run `transform.py` to clean JSON and store transformed data
5. Use `transformations.sql` to build final tables and views

---

### Connect With Me

If you'd like to collaborate or hire for data engineering projects, feel free to connect via [LinkedIn](https://linkedin.com/in/nikithapulluri).
