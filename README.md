Walmart Sales Data Analysis — SQL Project
📌 Project Overview

This project analyzes Walmart’s sales data to identify top-performing branches and products, understand customer behavior, and uncover key factors influencing overall sales performance. The primary aim is to extract meaningful insights that help optimize sales strategies and improve decision-making for a retail business. The dataset used in this project is sourced from the Kaggle Walmart Sales Forecasting Competition.

🎯 Project Objective

The core objective of this study is to derive valuable insights from Walmart’s transaction-level sales data. The project explores how different products perform, how customers behave across branches, and what trends influence sales volume and profitability—ultimately helping improve business outcomes without altering the original purpose.

📂 About the Dataset

The dataset includes sales records from Walmart branches located in Mandalay, Yangon, and Naypyitaw. It consists of 17 columns and 1000 rows, containing details on product lines, customer information, pricing, VAT, revenue, ratings, and timestamps.

🛠 Approach Used
1. Data Wrangling

Inspected the dataset for NULL values

Built the database and inserted records

Ensured all fields were NOT NULL during data import

Validated the schema for correctness

2. Feature Engineering

New columns were created to enrich analysis:

time_of_day → Morning / Afternoon / Evening

day_name → Day of week (Mon–Sun)

month_name → Month of transaction (Jan–Dec)

These features helped identify which periods had the highest sales and ratings.

3. Exploratory Data Analysis (EDA)

Performed extensive SQL queries to answer the business questions listed below, covering product, sales, and customer insights.

📊 Business Questions to Answer

Generic Questions

How many distinct cities are present in the dataset?

In which city is each branch situated?

Product Analysis

How many distinct product lines are there in the dataset?

What is the most common payment method?

What is the most selling product line?

What is the total revenue by month?

Which month recorded the highest COGS?

Which product line generated the highest revenue?

Which city has the highest revenue?

Which product line incurred the highest VAT?

Retrieve each product line and add a column product_category indicating 'Good' or 'Bad' based on whether its sales are above average.

Which branch sold more products than the average sold?

What is the most common product line by gender?

What is the average rating of each product line?

Sales Analysis

Number of sales made in each time of the day per weekday

Identify the customer type that generates the highest revenue

Which city has the largest VAT percentage?

Which customer type pays the most VAT?

Customer Analysis

How many unique customer types does the data have?

How many unique payment methods does the data have?

Which is the most common customer type?

Which customer type buys the most?

What is the gender of most customers?

What is the gender distribution per branch?

Which time of the day do customers give most ratings?

Which time of the day do customers give most ratings per branch?

Which day of the week has the best average ratings?

Which day of the week has the best average ratings per branch?

📘 Conclusion

This SQL-based case study demonstrates how real-world retail data can be used to uncover trends in sales, customer preferences, and product performance. It showcases strong SQL skills including joins, aggregates, window functions, CTEs, CASE statements, and date-based analysis—making it an excellent portfolio project for data analytics roles.
