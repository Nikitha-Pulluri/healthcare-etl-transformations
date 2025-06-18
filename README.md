# ETL Transformations — Resource Onboarding

This repository contains a collection of **Python** and **SQL** transformation scripts designed for healthcare resource onboarding workflows. These scripts demonstrate practical data cleaning, standardization, deduplication, and aggregation techniques used in real-world ETL pipelines.


---

## Python Transformations

| File                          | Description |
|------------------------------|-------------|
| `null_handling.py`           | Replaces nulls in key fields (phone, email, location) with default values |
| `standardization.py`         | Trims and converts email addresses to lowercase |
| `deduplication.py`           | Sorts by `start_date` and removes duplicate `employee_id` entries |
| `seniority_classification.py`| Classifies employees as Junior, Mid, or Senior based on experience |
| `retention_flag.py`          | Flags records as `Review` or `Retain` based on start date |
| `latest_status_extraction.py`| Extracts the latest status from a JSON status log array |

---

## SQL Transformations

| File                           | Description |
|--------------------------------|-------------|
| `null_handling.sql`            | Replaces nulls using `COALESCE()` for consistency |
| `standardization.sql`          | Applies `TRIM()` and `LOWER()` for email normalization |
| `deduplication.sql`            | Uses `ROW_NUMBER()` to remove duplicates by `employee_id` |
| `seniority_classification.sql` | Adds a `seniority_level` column based on experience |
| `multi_level_aggregation.sql`  | Aggregates total onboarded resources by `region` and `department` |
| `retention_flag.sql`           | Adds a `retention_flag` for employees with >2 years tenure |
| `delta_loading.sql`            | Loads only new records not present in the target table |

---

Each script is modular and can be reused or extended for other onboarding and data pipeline projects.

---

If you'd like to collaborate or hire for data engineering projects, feel free to connect via [LinkedIn](https://linkedin.com/in/nikithapulluri).
