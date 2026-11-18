/*
FINTRUST 360 - FINANCIAL CUSTOMER COMPLAINT ANALYSIS
*/
PART 1: DATABASE AND TABLE SETUP
=========================================================
CREATE DATABASE IF NOT EXISTS fintrust360;
USE fintrust360;
CREATE TABLE IF NOT EXISTS fintrust_complaints (
    complaint_id              VARCHAR(50) PRIMARY KEY,
    date_received             DATE,
    financial_product         VARCHAR(150),
    issue_category            VARCHAR(255),
    issue_detail              TEXT,
    company_name              VARCHAR(255),
    state                     VARCHAR(100),
    submission_channel        VARCHAR(100),
    response_due_date         DATE,
    date_company_responded    DATE NULL,
    response_status           VARCHAR(50),
    company_response          TEXT,
    timely_response           VARCHAR(30) NULL,
    short_complaint_summary   TEXT,
    response_days             INT NULL,
    date_validation           VARCHAR(50)
);

PART 2: BASIC DATA VALIDATION
Run these after importing the CSV.
=========================================================
Check 1: Count all imported records.
SELECT COUNT(*) AS total_imported_records
FROM fintrust_complaints;

Check 2: Check for duplicate complaint IDs.
Expected result: 0 rows, because complaint_id is the primary key.
SELECT complaint_id, COUNT(*) AS occurrences
FROM fintrust_complaints
GROUP BY complaint_id
HAVING COUNT(*) > 1;

Check 3: Check complaint status counts.
SELECT response_status, COUNT(*) AS complaint_count
FROM fintrust_complaints
GROUP BY response_status
ORDER BY complaint_count DESC;
=========================================================
PART 3: REQUIRED COMPLAINT ANALYSIS QUERIES
Each query includes an explanation of what it measures.
=========================================================
Q1. TOTAL COMPLAINTS
Purpose: Finds the total number of complaint records in the dataset.
SELECT COUNT(*) AS total_complaints
FROM fintrust_complaints;

Q2. MONTHLY COMPLAINT TRENDS
Purpose: Groups complaints by year and month to show how complaint
volume changes over time. Sorting by date keeps months chronological.

SELECT
    DATE_FORMAT(date_received, '%Y-%m') AS complaint_month,
    COUNT(*) AS total_complaints
FROM fintrust_complaints
WHERE date_received IS NOT NULL
GROUP BY DATE_FORMAT(date_received, '%Y-%m')
ORDER BY complaint_month;

Q3. COMPLAINTS BY FINANCIAL PRODUCT
Purpose: Counts complaints for each financial product and ranks
products from the highest complaint volume to the lowest.

SELECT
    financial_product,
    COUNT(*) AS total_complaints
FROM fintrust_complaints
GROUP BY financial_product
ORDER BY total_complaints DESC;


Q4. MOST FREQUENTLY REPORTED ISSUES
Purpose: Identifies the most common issue categories reported by
customers. LIMIT 10 displays the ten most frequent issue categories.

SELECT
    issue_category,
    COUNT(*) AS complaint_count
FROM fintrust_complaints
GROUP BY issue_category
ORDER BY complaint_count DESC
LIMIT 10;


Q5. COMPLAINTS BY COMPANY
Purpose: Compares the number of complaints associated with each
company. This measures complaint volume, not company size or failure rate.

SELECT
    company_name,
    COUNT(*) AS total_complaints
FROM fintrust_complaints
GROUP BY company_name
ORDER BY total_complaints DESC;


Q6. COMPLAINTS BY CUSTOMER STATE
Purpose: Shows the geographic distribution of complaints by state.
Unknown is retained as a category where the state was missing.

SELECT
    state,
    COUNT(*) AS total_complaints
FROM fintrust_complaints
GROUP BY state
ORDER BY total_complaints DESC;


Q7. TIMELY-RESPONSE PERCENTAGE
Purpose: Calculates the percentage of closed complaints answered
on time. Open complaints and blank timely_response values are excluded.

SELECT
    COUNT(*) AS closed_complaints_with_response_flag,
    SUM(CASE
            WHEN LOWER(TRIM(timely_response)) IN ('yes', 'timely', 'true', '1')
            THEN 1 ELSE 0
        END) AS timely_complaints,
    SUM(CASE
            WHEN LOWER(TRIM(timely_response)) IN ('no', 'late', 'false', '0')
            THEN 1 ELSE 0
        END) AS late_complaints,
    ROUND(
        100.0 * SUM(CASE
                        WHEN LOWER(TRIM(timely_response)) IN ('yes', 'timely', 'true', '1')
                        THEN 1 ELSE 0
                    END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS timely_response_percentage
FROM fintrust_complaints
WHERE date_company_responded IS NOT NULL
  AND timely_response IS NOT NULL
  AND TRIM(timely_response) <> '';


Q8. AVERAGE RESPONSE TIME
Purpose: Calculates the average number of days companies took to
respond. Only complaints with a recorded response date are included.

SELECT
    ROUND(AVG(response_days), 2) AS average_response_time_days,
    MIN(response_days) AS minimum_response_time_days,
    MAX(response_days) AS maximum_response_time_days
FROM fintrust_complaints
WHERE date_company_responded IS NOT NULL
  AND response_days IS NOT NULL;
=========================================================
 OPTIONAL ADDITIONAL ANALYSIS

Q9. OPEN VS CLOSED COMPLAINTS
Purpose: Summarizes the current response status of all complaints.

SELECT
    response_status,
    COUNT(*) AS complaint_count,
    ROUND(100.0 * COUNT(*) /
          NULLIF((SELECT COUNT(*) FROM fintrust_complaints), 0), 2)
          AS percentage_of_all_complaints
FROM fintrust_complaints
GROUP BY response_status
ORDER BY complaint_count DESC;


Q10. TIMELY-RESPONSE PERCENTAGE BY COMPANY
Purpose: Compares the on-time response percentage for each company.
Companies with no recorded response flags are excluded.

SELECT
    company_name,
    COUNT(*) AS closed_complaints_with_response_flag,
    SUM(CASE
            WHEN LOWER(TRIM(timely_response)) IN ('yes', 'timely', 'true', '1')
            THEN 1 ELSE 0
        END) AS timely_complaints,
    ROUND(
        100.0 * SUM(CASE
                        WHEN LOWER(TRIM(timely_response)) IN ('yes', 'timely', 'true', '1')
                        THEN 1 ELSE 0
                    END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS timely_response_percentage
FROM fintrust_complaints
WHERE date_company_responded IS NOT NULL
  AND timely_response IS NOT NULL
  AND TRIM(timely_response) <> ''
GROUP BY company_name
ORDER BY timely_response_percentage DESC;


Q11. AVERAGE RESPONSE TIME BY FINANCIAL PRODUCT
Purpose: Finds which product categories have longer average response
times. Only records with a known response duration are considered.

SELECT
    financial_product,
    COUNT(*) AS responded_complaints,
    ROUND(AVG(response_days), 2) AS average_response_time_days
FROM fintrust_complaints
WHERE response_days IS NOT NULL
GROUP BY financial_product
ORDER BY average_response_time_days DESC;


Q12. COMPLAINTS BY SUBMISSION CHANNEL
Purpose: Identifies the channels customers used to submit complaints.

SELECT
    submission_channel,
    COUNT(*) AS total_complaints
FROM fintrust_complaints
GROUP BY submission_channel
ORDER BY total_complaints DESC;


