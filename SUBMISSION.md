📦 SUBMISSION – Ecommerce Data Engineering Pipeline
👨‍🎓 Student Information

Name: Adarsh

Roll Number: 23P31A4402

Email: 23P31A4402@acet.ac.in

Submission Date: 27/12/25

🔗 GitHub Repository

Repository Name: ecommerce-data-pipeline-23P31A4402

Repository URL: https://github.com/Adarsh12325/ecommerce-data-pipeline-23P31A4402.git

✅ Repository is public and accessible.

🧩 Project Overview

This project implements a complete end-to-end Ecommerce Data Engineering Pipeline covering:

Data ingestion from CSV files

Multi-layer data modeling (staging → production → warehouse)

Data quality validation

Analytics-ready fact and dimension tables

BI dashboard using Power BI Desktop

Automated reporting and documentation

✅ Project Completion Status (7 Phases)
Phase	Description	Status
Phase 1	Data Generation & Raw CSV Creation	✅ Completed
Phase 2	Data Ingestion (CSV → Staging)	✅ Completed
Phase 3	Data Transformation (Staging → Production → Warehouse)	✅ Completed
Phase 4	Data Quality Checks	✅ Completed
Phase 5	Analytics & SQL Queries	✅ Completed
Phase 6	BI Dashboard (Power BI Desktop)	✅ Completed
Phase 7	Orchestration, Reporting & Documentation	✅ Completed
📊 BI Dashboard Details
Selected BI Tool

Power BI Desktop

Dashboard Artifacts

.pbix file included in repository

4 dashboard screenshots included

Dashboard Visuals

Total Sales Revenue (Card)

Revenue by Product (Bar Chart)

Monthly Sales Trend (Line Chart)

Top 10 Products by Quantity Sold (Bar Chart)

📁 Location:

dashboards/
 ├── ecommerce_dashboard.pbix
 ├── dashboard_screenshot_1.png
 ├── dashboard_screenshot_2.png
 ├── dashboard_screenshot_3.png
 └── dashboard_screenshot_4.png

📁 Key Deliverables Summary
✅ Raw Data CSV Files

customers.csv

products.csv

transactions.csv

transaction_items.csv

✅ JSON Reports

ingestion_summary.json

quality_report.json

transformation_summary.json

pipeline_execution_report.json

monitoring_report.json

✅ Analytical Outputs

CSV exports from 10 analytical SQL queries

✅ SQL Scripts

Staging schema DDL

Production schema DDL

Warehouse schema DDL

Fact & dimension table creation

Analytical queries

✅ Python Scripts

Ingestion

Transformation

Quality checks

Orchestration

✅ Documentation

README.md

architecture.md

dashboard_guide.md

SUBMISSION.md

▶️ Running Instructions
Prerequisites

Docker & Docker Compose

Python 3.10+

Power BI Desktop

Steps to Run the Pipeline

Clone the repository:

git clone https://github.com/Adarsh12325/ecommerce-data-pipeline-23P31A4402.git
cd ecommerce-data-pipeline-23P31A4402


Start PostgreSQL container:

docker compose up -d


Run ingestion scripts:

python scripts/ingestion/generate_data.py


Run transformation scripts:

python scripts/transformation/run_transformations.py


Run data quality checks:

python scripts/quality_checks/run_quality_checks.py


Run orchestration:

python scripts/orchestration/run_pipeline.py


Open Power BI:

Load fact_sales.csv

Open .pbix file for dashboard

📈 Project Statistics

Total Lines of Code: ~850

Unit Test Coverage: >80%

Total Records Processed:

Customers: 1,000

Products: 500

Transactions: 10,000

Transaction Items: 20,008

⚠️ Challenges Faced & Solutions
Challenge 1: PostgreSQL Authentication & Docker Issues

Problem: Container authentication errors and config conflicts

Solution: Clean container recreation, consistent credentials, proper port mapping

Challenge 2: Schema & Table Dependency Errors

Problem: Missing schemas and table load order issues

Solution: Enforced strict execution order (staging → production → warehouse)

Challenge 3: BI Tool Connectivity

Problem: Power BI authentication failures with Docker PostgreSQL

Solution: Switched to CSV-based BI integration using fact_sales.csv

Challenge 4: Data Quality Validation

Problem: Ensuring consistency across layers

Solution: Implemented automated Python-based quality checks with JSON reporting

🧪 Verification Checklist

 Repository is public

 All required files committed

 .gitignore excludes sensitive files

 Docker setup works from scratch

 Pipeline executes end-to-end

 Dashboard created and documented

 JSON reports generated

 Submission requirements satisfied

🏁 Final Declaration

I confirm that this submission is my original work, fully complies with the provided instructions, and has been tested end-to-end.