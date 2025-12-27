🛒 Ecommerce Data Engineering Pipeline
📌 Project Overview

This project implements an end-to-end Ecommerce Data Engineering Pipeline that ingests raw CSV data, processes it through multiple database layers, performs data quality checks, generates analytical outputs, and visualizes insights using Power BI.

The pipeline follows industry-standard data engineering practices, including schema-based data modeling, automation-ready scripts, structured logging, and reproducible execution using Docker and PostgreSQL.

🎯 Objectives

Build a complete data pipeline from scratch

Implement staging → production → warehouse architecture

Generate data quality, transformation, ingestion, and monitoring reports

Export analytical query results

Create a BI dashboard using Power BI

Ensure the pipeline can be executed from scratch without errors

🧱 Architecture
CSV Files
   ↓
Staging Schema (Raw Load)
   ↓
Production Schema (Cleaned Data)
   ↓
Warehouse Schema
   ├── Dimension Tables
   └── Fact Table
   ↓
Analytics & BI Dashboard


Database: PostgreSQL
Containerization: Docker
BI Tool: Power BI Desktop

📂 Project Structure
ecommerce-data-pipeline-<roll-number>/
│
├── data/
│   ├── raw/
│   │   ├── customers.csv
│   │   ├── products.csv
│   │   ├── transactions.csv
│   │   └── transaction_items.csv
│   └── analytics/
│       ├── query_01.csv
│       ├── ...
│       └── query_10.csv
│
├── sql/
│   ├── create_schema.sql
│   ├── staging/
│   ├── production/
│   ├── warehouse/
│   └── analytics/
│
├── scripts/
│   ├── ingestion/
│   ├── transformation/
│   ├── quality_checks/
│   └── orchestration/
│
├── reports/
│   ├── ingestion_summary.json
│   ├── quality_report.json
│   ├── transformation_summary.json
│   ├── pipeline_execution_report.json
│   └── monitoring_report.json
│
├── dashboard/
│   ├── powerbi_dashboard.pbix
│   ├── screenshot_1.png
│   ├── screenshot_2.png
│   ├── screenshot_3.png
│   └── screenshot_4.png
│
├── docker-compose.yml
├── Dockerfile
├── requirements.txt
├── README.md
├── architecture.md
├── dashboard_guide.md
├── SUBMISSION.md
└── .gitignore

🛠️ Tech Stack
Component	Technology
Database	PostgreSQL 15
Containerization	Docker
Scripting	Python 3
BI Tool	Power BI Desktop
Data Format	CSV, JSON
Testing	Pytest
🚀 Pipeline Execution (From Scratch)
1️⃣ Start PostgreSQL using Docker
docker-compose up -d

2️⃣ Create Database Schemas
psql -U admin -d ecommerce -f sql/create_schema.sql


Creates:

staging

production

warehouse

3️⃣ Load Staging Data
psql -U admin -d ecommerce -f sql/staging/staging_tables.sql
psql -U admin -d ecommerce -f sql/staging/load_staging_tables.sql

4️⃣ Load Production Data
psql -U admin -d ecommerce -f sql/production/production_tables.sql
psql -U admin -d ecommerce -f sql/production/load_production_tables.sql

5️⃣ Create Warehouse Tables
psql -U admin -d ecommerce -f sql/warehouse/dimensions.sql
psql -U admin -d ecommerce -f sql/warehouse/fact_sales.sql

6️⃣ Run Python Pipeline Scripts
python scripts/ingestion/generate_ingestion_summary.py
python scripts/transformation/transformation_summary.py
python scripts/quality_checks/run_quality_checks.py
python scripts/orchestration/pipeline_orchestrator.py
python scripts/orchestration/monitoring.py

7️⃣ Generate Analytical Query Outputs
psql -U admin -d ecommerce -f sql/analytics/run_all_queries.sql


Exports 10 CSV analytical reports.

📊 BI Dashboard (Power BI)

Connected to fact_sales.csv

Built 4 dashboards:

Total Revenue

Sales by Product

Sales by Customer

Monthly Sales Trend

📁 Location:

dashboard/
├── powerbi_dashboard.pbix
├── screenshot_1.png
├── screenshot_2.png
├── screenshot_3.png
└── screenshot_4.png

📑 Generated Reports
Report	File
Ingestion Summary	ingestion_summary.json
Quality Report	quality_report.json
Transformation Summary	transformation_summary.json
Pipeline Execution	pipeline_execution_report.json
Monitoring Report	monitoring_report.json
🧪 Testing
pytest


Unit tests included

Coverage >80%

⚠️ Error Prevention

Dockerized PostgreSQL (no local conflicts)

Fixed schema order (staging → production → warehouse)

Explicit credentials and ports

No hardcoded secrets

Re-runnable pipeline from scratch

📌 Final Verification Checklist

 Repository is public

 Docker setup works

 Pipeline runs end-to-end

 BI dashboard created

 All JSON & CSV artifacts generated

 Documentation complete

👤 Author

Name: Adarsh
Program: B.Tech – Data Science
Project: Ecommerce Data Engineering Pipeline
Submission Version: v1.0