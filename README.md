# Consumer Complaints Analysis

## Overview
Analysis of 62,516 consumer financial complaints submitted 
between 2017 and 2023. This project covers data cleaning, 
SQL analysis and data visualisation across three tools.

## Tools Used
- **Python (Jupyter Notebook)** — data cleaning and exploration
- **MySQL Workbench** — database storage and SQL analysis
- **OwerBI** — data visualisation and dashboards

## Dataset
- Source: Consumer Financial Protection Bureau (CFPB)
- Records: 62,516 complaints
- Period: 2017 to 2023
- Columns: 14

## Project Structure
consumer-complaints-analysis/
├── notebooks/
│   └── consumer_cleaning.ipynb
├── sql/
│   └── queries.sql
├── data/
│   └── consumer_cleaning.csv
└── README.md

## Data Cleaning Steps
- Loaded raw Excel file using Python and Pandas
- Checked and removed all blank spaces across all text columns
- Handled null values across four columns
- Standardised all text columns to consistent casing
- Fixed and validated date columns
- Created new column for days to receive complaint
- Created new column for month extracted from date submitted
- Removed duplicate records
- Exported cleaned data as CSV for MySQL import

## Column Details
| Column | Description |
|---|---|
| Complaint ID | Unique complaint identifier |
| Submitted via | Channel used to submit complaint |
| Date submitted | Date complaint was submitted |
| Date received | Date complaint was received |
| State | US state where complaint originated |
| Product | Financial product complained about |
| Sub-product | Sub category of the product |
| Issue | Main issue reported |
| Sub-issue | Sub category of the issue |
| Company public response | Company public statement |
| Company response to consumer | How company resolved complaint |
| Timely response | Whether response was timely |
| Days to receive | Days between submission and receipt |
| Month | Month extracted from date submitted |

## SQL Analysis
- Imported cleaned data into MySQL Workbench
- Created structured database and table schema
- Ran 15 analytical queries covering product analysis, 
  response times, state breakdowns, monthly trends 
  and resolution outcomes

## Key Questions Answered
1. Which financial products get complained about most?
2. What percentage of companies responded on time?
3. Which states report the most complaints?
4. Which submission channel gets the fastest response?
5. Are complaints increasing or decreasing over time?
6. What specific financial issues do consumers face most?
7. How do companies typically resolve complaints?
8. Which products take the longest to get a response?
9. Which states win the most monetary compensation?
10. Which months see the most financial complaints?
11. Which products have the worst timely response rate?
12. What are the most common sub issues reported?
13. Which products have the most unresolved complaints?
14. Do monetary relief cases take longer to resolve?
15. How do consumers prefer to submit complaints?

## How to Run
1. Clone this repository
2. Open consumer_cleaning.ipynb in Jupyter Notebook
3. Run all cells from top to bottom
4. Import consumer_cleaning.csv into MySQL Workbench
5. Run queries from queries.sql in MySQL Workbench
6. Connect MySQL to Metabase for visualisation

## Requirements
- Python 3.x
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL Workbench
- Metabase
```

---

Go to GitHub, click your `README.md`, click the **pencil icon**, delete everything and paste this in. Commit message:
```
Updated README to 14 columns with column details table
