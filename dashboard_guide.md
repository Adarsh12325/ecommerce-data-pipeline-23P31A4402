📊 Power BI Dashboard Guide – Ecommerce Data Pipeline
📌 Overview

This document explains the Power BI dashboard created as part of the Ecommerce Data Engineering Pipeline project.
The dashboard provides clear business insights using data prepared in the warehouse layer and exported as a CSV file.

🛠️ BI Tool Information

BI Tool: Power BI Desktop

Author: Adarsh

Dashboard Status: COMPLETED

📂 Data Source Details

Source File: fact_sales.csv

Data Origin: PostgreSQL warehouse.fact_sales

Data Type: Analytical fact table

Granularity: Transaction-item level

The data is fully cleaned, validated, and analytics-ready before being used in Power BI.

🔗 Power BI Connection Steps

Open Power BI Desktop

Click Get Data

Select Text/CSV

Browse and select fact_sales.csv

Click Load

Verify column data types:

Dates → Date

Revenue → Decimal Number

Quantity → Whole Number

📈 Dashboard Visualizations

The dashboard contains four required visuals, each serving a specific business purpose.

1️⃣ Total Sales Revenue (Card)

Visual Type: Card

Purpose:

Displays overall revenue generated

Provides a quick KPI for business performance

Metric Used:

Sum of total_amount

2️⃣ Revenue by Product (Bar Chart)

Visual Type: Bar Chart

Purpose:

Compares revenue contribution by product

Identifies high-performing products

Fields Used:

Axis: product_name

Values: Sum of total_amount

3️⃣ Monthly Sales Trend (Line Chart)

Visual Type: Line Chart

Purpose:

Shows sales performance over time

Helps identify growth, seasonality, or decline

Fields Used:

X-Axis: Order Month (derived from transaction_date)

Y-Axis: Sum of total_amount

4️⃣ Top 10 Products by Quantity Sold (Bar Chart)

Visual Type: Bar Chart

Purpose:

Highlights the most sold products by volume

Supports inventory and demand analysis

Fields Used:

Axis: product_name

Values: Sum of quantity

Filter: Top 10 by quantity

🖼️ Screenshots for Submission

Ensure the following 4 screenshots are included in the repository:

Full dashboard overview

Total Sales Revenue card

Revenue by Product bar chart

Monthly Sales Trend or Top 10 Products chart

Screenshots should clearly show:

Chart titles

Axes labels

Data values

📦 Submission Artifacts

The following Power BI artifacts are included:

.pbix file (Power BI Desktop file)

Dashboard screenshots (PNG/JPG)

powerbi_metadata.json

This dashboard_guide.md

✅ Validation Checklist

 Data loaded from fact_sales.csv

 All four required visuals created

 Screenshots captured

 Metadata documented

 Dashboard ready for evaluation

🏁 Conclusion

The Power BI dashboard successfully transforms warehouse data into clear, actionable business insights.
It meets all submission requirements and demonstrates strong understanding of data modeling, analytics, and visualization best practices.