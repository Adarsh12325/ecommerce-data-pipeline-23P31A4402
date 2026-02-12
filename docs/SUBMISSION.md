# SUBMISSION – Ecommerce Data Engineering Pipeline
## Student Information
```
Name: Adarsh

Roll Number: 23P31A4402

Email: 23P31A4402@acet.ac.in

Submission Date: 27/12/25
```

## GitHub Repository
```
Repository Name: ecommerce-data-pipeline-23P31A4402

Repository URL: https://github.com/Adarsh12325/ecommerce-data-pipeline-23P31A4402.git

Repository Status: Public and accessible
```

## Project Overview
```
End-to-end Ecommerce Data Engineering Pipeline

Data ingestion from CSV files

Multi-layer data modeling (staging → production → warehouse)

Data quality validation

Analytics-ready fact and dimension tables

BI dashboard using Power BI Desktop

Automated reporting and documentation
```

## Project Completion Status (7 Phases)
### Phase 1
```
Description: Data Generation & Raw CSV Creation

Status:  Completed
```
###Phase 2
```
Description: Data Ingestion (CSV → Staging)

Status:  Completed
```
### Phase 3
```
Description: Data Transformation (Staging → Production → Warehouse)

Status:  Completed
```
### Phase 4
```
Description: Data Quality Checks

Status:  Completed
```
### Phase 5
```
Description: Analytics & SQL Queries

Status:  Completed
```
### Phase 6
```
Description: BI Dashboard (Power BI Desktop)

Status:  Completed
```
### Phase 7
```
Description: Orchestration, Reporting & Documentation

Status:  Completed
```
## BI Dashboard Details
### Selected BI Tool

- Power BI Desktop

### Dashboard Artifacts

- .pbix file included in repository

- 4 dashboard screenshots included

### Dashboard Visuals
```
Total Sales Revenue (Card)

Revenue by Product (Bar Chart)

Monthly Sales Trend (Line Chart)

Top 10 Products by Quantity Sold (Bar Chart)
```
### Location
```
dashboards/ecommerce_dashboard.pbix

dashboards/dashboard_screenshot_1.png

dashboards/dashboard_screenshot_2.png

dashboards/dashboard_screenshot_3.png

dashboards/dashboard_screenshot_4.png
```
## Key Deliverables Summary
### Raw Data CSV Files
```
customers.csv

products.csv

transactions.csv

transaction_items.csv
```
### JSON Reports
```
ingestion_summary.json

quality_report.json

transformation_summary.json

pipeline_execution_report.json

monitoring_report.json
```
### Analytical Outputs
#### CSV exports from 10 analytical SQL queries

##### SQL Scripts
```
Staging schema DDL

Production schema DDL

Warehouse schema DDL

Fact & dimension table creation

Analytical queries

Python Scripts

Ingestion scripts

Transformation scripts

Quality check scripts

Orchestration scripts
```

##### Documentation
```
README.md

architecture.md

dashboard_guide.md

SUBMISSION.md
```
### Running Instructions
#### Prerequisites
```
Docker & Docker Compose

Python 3.10+

Power BI Desktop
```
##### Steps to Run the Pipeline
```
Clone the repository

Navigate into the project directory

Start PostgreSQL container using Docker Compose

Run ingestion scripts

Run transformation scripts

Run data quality checks

Run orchestration pipeline

Open Power BI and load fact_sales.csv

Open the .pbix file for dashboard
``` 

### Project Statistics
```
Total Lines of Code: ~850

Unit Test Coverage: >80%

Total Records Processed

Customers: 1,000

Products: 500

Transactions: 10,000

Transaction Items: 20,008
```
### Challenges Faced & Solutions
```
Challenge 1: PostgreSQL Authentication & Docker Issues

Problem: Container authentication errors and configuration conflicts

Solution: Clean container recreation, consistent credentials, proper port mapping

Challenge 2: Schema & Table Dependency Errors

Problem: Missing schemas and incorrect table load order

Solution: Enforced strict execution order (staging → production → warehouse)

Challenge 3: BI Tool Connectivity

Problem: Power BI authentication failures with Docker PostgreSQL

Solution: Switched to CSV-based BI integration using fact_sales.csv

Challenge 4: Data Quality Validation

Problem: Ensuring consistency across layers

Solution: Implemented automated Python-based quality checks with JSON reporting
```
### Verification Checklist
```
Repository is public

All required files committed

.gitignore excludes sensitive files

Docker setup works from scratch

Pipeline executes end-to-end

Dashboard created and documented

JSON reports generated

Submission requirements satisfied
```
### Final Declaration
```
This submission is original work

Fully complies with provided instructions

Tested end-to-end
```
### Completion Confirmation
```
All 7 Phases Completed 

All required scripts implemented 

Dockerized pipeline operational 

Test coverage configured 

Quality & Monitoring reports generated 
```