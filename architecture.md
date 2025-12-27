🏗️ System Architecture – Ecommerce Data Engineering Pipeline
📌 Overview

This document describes the technical architecture of the Ecommerce Data Engineering Pipeline.
The system is designed to ingest raw ecommerce data, process it through multiple layers, ensure data quality, generate analytical outputs, and support business intelligence reporting.

The architecture follows modern data engineering best practices using a layered database design, containerized execution, and automation-ready scripts.

🎯 Architectural Goals

Ensure data reliability and quality

Support scalable data processing

Enable easy re-execution from scratch

Separate concerns using logical data layers

Provide analytics-ready data for BI tools

🧱 High-Level Architecture
+-------------------+
|   Raw CSV Files   |
+-------------------+
          |
          v
+-------------------+
|   Staging Layer   |
| (Raw Ingestion)   |
+-------------------+
          |
          v
+-------------------+
| Production Layer  |
| (Cleaned Data)    |
+-------------------+
          |
          v
+-------------------+
| Warehouse Layer   |
| (Star Schema)     |
+-------------------+
          |
          v
+-------------------+
| Analytics & BI    |
| (Power BI)        |
+-------------------+

🗂️ Data Layers Explained
1️⃣ Raw Data Layer

Source: CSV Files
Location: data/raw/

Files:

customers.csv

products.csv

transactions.csv

transaction_items.csv

Purpose:

Acts as the single source of truth

No transformations applied

Used for repeatable pipeline execution

2️⃣ Staging Layer (PostgreSQL Schema: staging)

Purpose:

Store raw data inside the database

Perform basic structural validation

Prepare data for transformation

Characteristics:

One-to-one mapping with CSV files

No business logic applied

Fast ingestion

3️⃣ Production Layer (PostgreSQL Schema: production)

Purpose:

Store cleaned and standardized data

Remove duplicates and invalid records

Enforce data consistency

Transformations Applied:

Data type validation

Removal of duplicates

Referential integrity enforcement

Filtering invalid records

4️⃣ Warehouse Layer (PostgreSQL Schema: warehouse)

Purpose:

Provide analytics-ready data

Optimized for reporting and BI tools

Data Model: Star Schema

Dimension Tables:

dim_customers

dim_products

Fact Table:

fact_sales

This structure enables:

Fast aggregations

Efficient joins

Easy BI integration

🧮 Data Modeling
⭐ Star Schema Design
        dim_customers
               |
               |
        +------fact_sales------+ 
               |
               |
          dim_products


Benefits:

Simple queries

High performance

Industry-standard BI design

⚙️ Processing Components
🐍 Python Scripts
Component	Responsibility
Ingestion	Generate ingestion summary
Transformation	Track staging → warehouse status
Quality Checks	Validate data correctness
Orchestration	Control pipeline execution
Monitoring	Capture system health
📑 SQL Scripts
Category	Description
Schema Creation	Create staging, production, warehouse
Table DDL	Define table structures
Data Loading	Move data between layers
Analytics	Generate business insights
🐳 Containerization (Docker)

PostgreSQL runs inside a Docker container

Ensures consistent environment

Avoids local machine conflicts

Enables easy cleanup and restart

Benefits:

Reproducibility

Portability

Isolation

📊 Business Intelligence Layer

Tool Used: Power BI Desktop

Data Source:

Exported fact_sales.csv

Dashboards Created:

Total Revenue

Sales by Product

Sales by Customer

Monthly Sales Trends

Output:

.pbix file

4 dashboard screenshots

📈 Monitoring & Reporting
Generated Reports (JSON)
Report	Purpose
ingestion_summary.json	Ingestion metrics
quality_report.json	Data validation results
transformation_summary.json	Layer transition status
pipeline_execution_report.json	Pipeline runtime
monitoring_report.json	System health

These reports provide traceability and auditability.

🔒 Error Handling & Reliability

Schema validation before inserts

Explicit row-count checks

Referential integrity validation

Controlled execution order

Clear failure states in reports

🔁 Reusability & Scalability

Modular Python scripts

Schema-based database design

Dockerized execution

Easy to add new data sources or dimensions

✅ Summary

This architecture ensures:

Clean separation of concerns

High-quality, analytics-ready data

End-to-end reproducibility

Enterprise-grade data pipeline design