# Chocolate_Data_Analysis
Chocolate Data Analysis of 443 transactions with 9 attributes. Data cleaning in SQL and analysis in SQL &amp; Excel to uncover trends, customer insights, purchase patterns, and top performers. A complete workflow for sales analysis and visualization.

🍫 Chocolate Data Analysis
📄 Project Overview

This repository contains a comprehensive analysis of a chocolate sales dataset. The goal of this project is to clean, process, and analyze sales data to extract actionable insights about customer behavior, purchase patterns, and transaction trends.

The project demonstrates data cleaning and preprocessing in SQL and data analysis using SQL and Excel.

🗂 Dataset Description

The dataset contains transactional records from a chocolate sales database.
It includes the following key columns:
| Column Name      | Description                                      |
|------------------|--------------------------------------------------|
| Txn ID           | Unique transaction identifier                    |
| First Name       | Customer first name                              |
| Last Name        | Customer last name                               |
| Email            | Customer email address                           |
| Job Title        | Customer job title                               |
| Product          | Chocolate product purchased                      |
| Purchase Mode    | Mode of purchase (e.g., Online, In-Store)        |
| Date             | Transaction date                                 |
| Purchase Amount  | Amount spent in the transaction                  |

The dataset contains multiple records per customer, representing individual transactions.

🧹 Data Cleaning Process (SQL)

Data Cleaning Process (SQL)

Data cleaning was performed to ensure consistency and usability:

Replaced missing Purchase Amount values with 0.

Converted Purchase Amount to INT and standardized Date to MySQL date format.

Renamed columns for consistency and readability.

Added a new column day_of_week to capture the weekday of each transaction.

These steps prepared the dataset for accurate analysis and reporting.
📊 Data Analysis (SQL & Excel)

### 📊 Exploratory Data Analysis (MySQL 🐬)

Performed SQL queries to explore chocolate sales data, including:  
- Viewing all records.  
- Identifying top and bottom customers by total purchase amount.  
- Calculating total sales per job title and per product.  
- Summarizing sales by purchase mode and day of the week.  
- Finding top and bottom sales days.  
- Counting successful and failed transactions per mode.  
- Ranking the top 5 customers for each job title.  

These analyses provided key insights into purchase patterns, sales trends, customer behavior, and transaction success rates.

### 📊 Exploratory Data Analysis (Excel 📈)

- Built a dynamic **dashboard** with filters by *First Name* showing all transactions, number of records, highest purchase, and total purchases.  
- Designed a **slicer page** to compare job holders’ purchases across Website, Mobile, In-store, and App.  
- Analyzed **Purchase Mode Success & Failure rates**, added **data bars** and **conditional formatting** for success rate visualization.  
- Created pivot tables for **Job Titles, Transactions, and Purchase Amounts** with conditional formatting.  
- Retrieved **Top 10 and Bottom 10 Customers** by total purchase amount.  
- Built **trend analysis** for daily and monthly sales.  


Filtering and sorting for targeted analysis.

🔑 Key Insights

Top Customers: Sahas (₹6,035), Shulabh (₹5,870), and Amal (₹5,810) were the highest spenders.

Lowest Customers: Upendra (₹25), Godavari (₹85), and Sravanthi (₹175) were the least active buyers.

Top Products: Organic Choco Syrup (₹12,110) and Spicy Special Slims (₹10,465) drove the highest sales.

Bottom Products: Cappuccino Filled Choco (₹0) and Honey Caramel Truffle (₹20) had negligible sales.

Purchase Modes: Website transactions led with 182 orders, followed by App (130), In-store (105), and Phone (26).

Job Titles: Office Assistants (Sahas – ₹6,035, Mahindra – ₹5,550) and Professors (Amal – ₹5,810, Kaishori – ₹5,570) had strong spending.

Weekday Trends: Saturday (₹38,485) was the highest sales day, while Monday (₹19,585) and Sunday (₹21,005) were the weakest.

📊 Predictions & Recommendations

Focus marketing campaigns on weekend sales (Sat & Fri) since they show higher purchase volumes.

Strengthen promotions on low-performing weekdays (Mon, Sun) to balance sales flow.

Website should remain the primary sales channel, but App usage shows growth potential—invest in app UX and offers.

Discontinue or revamp non-performing products (Cappuccino Filled Choco, Honey Caramel Truffle) to optimize product mix.

Encourage repeat high-value buyers (e.g., Sahas, Shulabh, Amal) with loyalty rewards.

Tailor product bundles and targeted promotions for top job categories (Office Assistants, Professors, Sales).


🛠️ Tools Used

MySQL: For data cleaning, transformations, and SQL-based exploratory analysis.

Excel: For dashboards, slicers, pivot tables, conditional formatting, and trend analysis.
