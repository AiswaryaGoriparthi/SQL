# SQL
SQL PROJECTS

Here's a project description for your SQL-based customer analysis workflow:

Project Title:
Customer Sales Analysis and Segmentation

Project Description:
This project aims to analyze customer sales data to identify purchasing behavior, rank customers by their sales contributions, and segment them into meaningful categories for better business decision-making. Using a structured approach with Common Table Expressions (CTEs), the process involves aggregating and enriching customer data from multiple dimensions within the sales schema.

Objectives:
Calculate Total Sales per Customer:
Determine the cumulative sales value for each customer using the sales.orders table.

Identify Last Order Date:
Find the most recent purchase date for every customer to understand their latest engagement.

Rank Customers by Total Sales:
Assign a rank to each customer based on their total sales using the ROW_NUMBER() window function. This helps prioritize customers based on revenue generation.

Segment Customers:
Classify customers into three segments—High, Medium, and Low—based on their total sales. This segmentation enables targeted marketing and personalized service strategies.

Join and Present a Unified View:
Integrate customer details from sales.customers with the computed sales metrics, rankings, and segments to create a comprehensive customer profile view.

Outcome:
The final output provides a detailed list of customers with the following attributes:

Customer ID, First Name, Last Name

Total Sales

Last Order Date

Sales Rank

Customer Segment
