# FinTrust-360-Financial-Customer-Complaints-Response-Analytics


**Data Analytics Internship Capstone Project | Tekloomy Student Portal**

## 1. Project Overview

FinTrust 360 is a data analytics project developed as part of the AICTE Data Analytics Internship.

The project focuses on analyzing financial customer complaints, identifying frequently reported issues, evaluating company response performance, and providing recommendations to improve customer service operations.

The project uses **Microsoft Excel, SQL, and Power BI** to transform raw complaint data into meaningful business insights.

### Project Information

| Details | Description |
|---|---|
| Project Title | FinTrust 360 – Financial Customer Complaints & Response Analytics |
| Internship | AICTE Data Analytics Internship |
| Organization | Tekloomy |
| Role | Junior Operations Data Analyst |
| Dataset | Financial Customer Complaints |
| Original Records | 5,000 |
| Cleaned Records | 4,975 |
| Tools Used | Excel, MySQL, Power BI |
| Project Type | Data Analytics and Business Intelligence |

## 2. Problem Statement

Financial service companies receive numerous customer complaints regarding credit cards, banking accounts, loans, unexpected fees, billing disputes, and other financial products.

Analyzing these complaints is essential for understanding customer difficulties and evaluating the efficiency of company responses.

The FinTrust 360 project aims to identify complaint patterns, analyze response timelines, and generate actionable insights that can help improve customer service.

## 3. Project Objectives

The main objectives of this project are:

1. Analyze the total number of customer complaints.
2. Identify financial products receiving the highest complaints.
3. Determine the most frequently reported customer issues.
4. Analyze monthly complaint trends.
5. Evaluate company response performance.
6. Calculate timely-response percentages.
7. Measure average response time.
8. Identify opportunities to improve customer service.
9. Develop an interactive Power BI dashboard.
10. Provide business recommendations based on the analysis.

## 4. Dataset Description

The project uses a fictional financial customer complaints dataset containing 5,000 original records.

### Important Dataset Columns

| Column | Description |
|---|---|
| complaint_id | Unique complaint identifier |
| date_received | Date complaint was received |
| financial_product | Financial product involved |
| issue_category | Category of customer issue |
| issue_detail | Detailed complaint issue |
| company_name | Financial company name |
| state | Customer's state |
| submission_channel | Complaint submission method |
| response_due_date | Expected response deadline |
| date_company_responded | Actual company response date |
| response_status | Open or Closed |
| company_response | Type of company response |
| timely_response | Whether the response was timely |
| short_complaint_summary | Brief complaint description |

All companies and customer complaint records are fictional and used for educational purposes.

## 5. Data Cleaning Using Excel

The original dataset was cleaned and validated before performing SQL analysis and building the Power BI dashboard.

### Data Cleaning Steps

1. Removed duplicate complaint records using complaint IDs.
2. Standardized financial product names.
3. Removed unnecessary whitespace.
4. Handled missing state values.
5. Verified date formats.
6. Checked complaint response dates.
7. Preserved missing response information for open complaints.
8. Created a response duration column.
9. Validated the cleaned dataset.
10. Prepared the final dataset for SQL and Power BI.

### Data Cleaning Summary

| Description | Count |
|---|---:|
| Original Records | 5,000 |
| Duplicate Records Removed | 25 |
| Final Cleaned Records | 4,975 |
| Missing State Values Handled | 49 |
| Open Complaints | 310 |
| Closed Complaints | 4,665 |

**Output Files:**

- FinTrust_Cleaned.xlsx
- FinTrust_Cleaned.csv

The cleaned Excel workbook contains the cleaned data, cleaning log, and validation summary.

## 6. SQL Complaint Analysis

SQL was used to analyze customer complaints and generate meaningful insights from the cleaned dataset.

**Database:** MySQL

**Table Name:** fintrust_complaints

### SQL Analysis Performed

1. Total Customer Complaints
2. Monthly Complaint Trends
3. Complaints by Financial Product
4. Most Frequently Reported Issues
5. Complaints by Company
6. Complaints by Customer State
7. Timely Response Percentage
8. Average Response Time
9. Open vs Closed Complaints
10. Timely Response Percentage by Company
11. Average Response Time by Financial Product
12. Complaints by Submission Channel

### Important SQL Findings

- Total complaints: **4,975**
- Open complaints: **310**
- Closed complaints: **4,665**
- Timely response rate: **90.08%**
- Average response time: **8.76 days**

**SQL File:** FinTrust_360_Complaint_Analysis.sql

The SQL file contains the queries and explanations of their purpose.

## 7. Power BI Dashboard

A professional, interactive, one-page Power BI dashboard was developed to visualize financial customer complaint trends and company response performance.

### Dashboard Title

**FinTrust 360 – Customer Experience Overview**

### Dashboard Subtitle

Financial Complaint Trends, Product Issues & Response Performance

### Key Performance Indicators (KPIs)

The dashboard contains five KPIs:

| KPI | Value |
|---|---:|
| Total Complaints | 4,975 |
| Open Complaints | 310 |
| Closed Complaints | 4,665 |
| Timely Response Rate | 90.08% |
| Average Response Time | 8.76 Days |

### Dashboard Visualizations

**1. Monthly Complaint Trends**

A line chart displaying complaint volumes across different months to identify trends and fluctuations.

**2. Complaints by Financial Product**

A bar chart comparing complaint counts across financial products.

**3. Top 5 Frequently Reported Issues**

A bar chart displaying the five most frequently reported customer issues.

**4. Timely Response Percentage by Company**

A column chart comparing timely-response percentages across financial companies.

### Interactive Filters

The dashboard contains three interactive slicers:

- Date
- Company
- Financial Product

These filters allow users to explore complaint patterns and company response performance.

### Dashboard Key Findings

- Credit Card is the highest complaint product, with 1,191 complaints.
- Unexpected fees is the most frequently reported issue, with 545 complaints.
- The timely response rate is 90.08%.
- A total of 4,665 complaints were closed.

**Power BI File:** FinTrust_360_Dashboard.pbix

## 8. Business Analysis and Key Findings

### Finding 1: Financial Products Receiving the Most Complaints

Credit Card received the highest number of complaints, with **1,191 complaints**, representing approximately 23.94% of the cleaned dataset.

Other frequently reported products include checking or savings accounts, credit reporting, and personal loans.

**Business Insight:** Credit card complaints represent an important area for further investigation and service improvement.

### Finding 2: Most Frequently Reported Customer Issues

The five most frequently reported issues were:

| Issue | Complaints |
|---|---:|
| Unexpected Fees | 545 |
| Account Access | 337 |
| Fraudulent Charges | 307 |
| Card Declined | 299 |
| Billing Dispute | 296 |

**Business Insight:** Unexpected fees are the most frequently reported issue, suggesting that companies should review fee transparency and customer communication.

### Finding 3: Monthly Complaint Trends

Monthly complaint volumes fluctuate throughout the reporting period.

May 2026 recorded 433 complaints, the highest count among complete months.

The dataset includes only part of October 2026, so that month's complaint volume should not be directly compared with complete months.

**Business Insight:** Companies should monitor monthly complaint patterns to identify periods requiring additional customer support resources.

### Finding 4: Company Response Performance

The analysis found:

- Closed complaints: 4,665
- Timely responses: 4,202
- Late responses: 463
- Timely response rate: 90.08%
- Average response time: 8.76 days

**Business Insight:** Most closed complaints received timely responses. However, late responses indicate opportunities to improve service efficiency.

### Finding 5: Complaint Resolution Status

Out of 4,975 complaints:

- 4,665 complaints were closed.
- 310 complaints remained open.

The complaint closure rate was approximately **93.77%**.

**Business Insight:** Although most complaints were closed, the remaining open complaints should be monitored to reduce unresolved customer issues.

## 9. Business Recommendations

Based on the analysis, the following three recommendations are proposed.

### Recommendation 1: Reduce Recurring Customer Complaints

Financial companies should investigate frequently reported issues, especially unexpected fees and credit card complaints.

**Suggested Actions:**

- Improve fee transparency.
- Provide clearer billing information.
- Review recurring complaint categories.
- Improve customer communication.

**Expected Benefit:** Reduced recurring complaints and improved customer understanding.

### Recommendation 2: Improve Complaint Response Efficiency

Companies should focus on reducing delayed responses and unresolved complaints.

**Suggested Actions:**

- Monitor response deadlines.
- Prioritize overdue complaints.
- Improve complaint-handling workflows.
- Track unresolved cases regularly.

**Expected Benefit:** Faster complaint handling and improved response performance.

### Recommendation 3: Monitor Company Performance

Companies should regularly review timely-response percentages and average response times.

**Suggested Actions:**

- Develop response performance reports.
- Identify delays in complaint processing.
- Monitor company-level response trends.
- Improve operational processes based on findings.

**Expected Benefit:** More consistent complaint management and improved operational efficiency.

## 10. Technologies Used

### Microsoft Excel

Used for:

- Data cleaning
- Data validation
- Duplicate removal
- Data standardization
- Cleaning documentation

### MySQL

Used for:

- Complaint analysis
- Data aggregation
- Monthly trend analysis
- Company performance analysis
- Timely response calculations

### Power BI

Used for:

- Interactive dashboard development
- Data visualization
- KPI monitoring
- DAX calculations
- Business insights

### GitHub

Used for:

- Project documentation
- Source file storage
- Deliverable submission
- Project portfolio presentation

## 11. Project Folder Structure

```text
FinTrust-360/
│
├── 01_Original_Data/
│   └── complaints_original.csv
│
├── 02_Cleaned_Data/
│   ├── FinTrust_Cleaned.xlsx
│   └── FinTrust_Cleaned.csv
│
├── 03_SQL/
│   └── FinTrust_360_Complaint_Analysis.sql
│
├── 04_PowerBI/
│   ├── FinTrust_360_Dashboard.pbix
│   └── Dashboard_Screenshot.png
│
├── 05_Reports/
│   └── FinTrust_360_Business_Analysis_Report.pdf
│
├── README.md
│
└── AI_USAGE.md
```

## 12. How to Run the Project

### Step 1: Download the Repository

Download or clone the GitHub repository to your computer.

### Step 2: Review the Cleaned Dataset

Open `FinTrust_Cleaned.xlsx` using Microsoft Excel.

Review the cleaned data, cleaning log, and validation summary.

### Step 3: Execute SQL Queries

1. Open MySQL Workbench or phpMyAdmin.
2. Create the required database and table using the SQL script.
3. Import the cleaned CSV dataset.
4. Execute the SQL analysis queries.
5. Review the generated results.

### Step 4: Open the Power BI Dashboard

1. Open Power BI Desktop.
2. Open `FinTrust_360_Dashboard.pbix`.
3. Update the dataset source path if necessary.
4. Refresh the report.
5. Explore the dashboard using the interactive slicers.

### Step 5: Review the Business Report

Open `FinTrust_360_Business_Analysis_Report.pdf` to review the project findings, business analysis, and recommendations.

## 13. Project Deliverables

The project includes the following deliverables:

1. Original Dataset (CSV)
2. Cleaned Dataset (Excel)
3. SQL Complaint Analysis File
4. Power BI Dashboard (PBIX)
5. Power BI Dashboard Screenshot
6. Business Analysis Report (PDF)
7. README Documentation
8. AI Usage Documentation

## 14. Project Limitations

- The dataset contains fictional customer complaint records.
- Complaint volume alone does not determine company performance because company sizes may differ.
- Timely responses do not necessarily indicate customer satisfaction.
- Open complaints are excluded from completed-response time calculations.
- The dataset covers a limited reporting period.
- Additional customer satisfaction information would support deeper analysis.

## 15. Conclusion

The FinTrust 360 project demonstrates how data analytics can support customer service operations in financial organizations.

Using Excel, SQL, and Power BI, the project analyzed **4,975 unique financial customer complaints** and identified recurring customer issues, complaint trends, and response performance patterns.

The analysis revealed that credit cards generated the highest complaint volume, unexpected fees were the most frequently reported issue, and 90.08% of closed complaints received timely responses.

The project highlights opportunities to reduce recurring complaints, improve response efficiency, and strengthen customer service operations through data-driven decision-making.

## 16. AI Usage Disclosure

AI-assisted tools were used to support project planning, SQL query drafting, DAX development, documentation, and business analysis.

All analytical results should be validated against the cleaned dataset before final submission.

Detailed AI usage documentation is provided in `AI_USAGE.md`.


---

**FinTrust 360 – Transforming Financial Customer Complaints into Actionable Business Insights.**
