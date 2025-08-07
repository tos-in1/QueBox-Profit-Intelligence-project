#  📊 QueBox Profit Intelligence Dashboard

Welcome to the QueBox Profit Intelligence Dashboard project repository! 🚀

This end-to-end data warehousing and analytics solution was designed to help QueBox, a global retail and distribution brand, gain deeper insights into product profitability and drive smarter strategic decisions. From raw CSV files to structured SQL data warehouse and an interactive Power BI dashboard, this solution follows modern data architecture and analytics best practices to support real-time, data-driven decision-making.

## 🚨 Business Problem

QueBox, a global retail and distribution brand, has experienced steady revenue growth in recent years; however, actual profit margins have not met expectations. The leadership suspects that certain products and product categories contribute more significantly to profitability than others. Ufortunately, there’s currently no clear insight into which products are driving profit and which are dragging it down. Without this insight, QueBox risks continuously investing time, money, and resources into low-performing products and categories that deliver minimal impact on overall business performance.

## 🎯 Project Goal

To enable QueBox executives, particularly the Chief Revenue Officer with real-time insights into product performance and profitability across regions, categories, and time.

## 🧱 Data Architecture, ETL Process & Modeling

![Image](https://github.com/user-attachments/assets/c2312e74-880d-477c-ae2f-57b99c3f85a7)

Data was sourced from two systems: CRM and ERP, each containing 3 CSV files. CRM data covered customers, products, and sales information WHILE ERP on the other hand provided extended info like customer demographics, sales location, and product categorization.

Using SQL, a layered ETL pipeline was built, with all workflow documented in the 'scripts' folder of this repository. The process began by ingesting raw files into the Bronze layer, which stores the unprocessed data in its original form. This was then followed by the Silver layer, where key transformation steps were applied, including:
1. Standardization of gender and  country columns to ensure uniformity
2. Validation of the arithmetic relationship between sales amount, price, and quantity sold
3. Removal of duplicates across both primary and foreign keys using window functions
4. and all other forms of data harmonization to resolve inconsistencies between the CRM and ERP sources.

The final step of the pipeline involved aggregating and integrating into star schema model the data within the Gold layer for analytical use

![Image](https://github.com/user-attachments/assets/bc882804-6891-4cbb-ba8e-eee25f3e8131)

The final model consists of:

1. gold.fact_sales – transactional data

2. gold.dim_products – product details

3. gold.dim_customers – customer demographics

ETL scripts are in the 'scripts' folder. Architecture diagrams (data flow, integration logic, star schema) are located in '/documents'


📊 Dashboard Design & Insights


To bring the data to life and support data-driven decision-making, an interactive Power BI dashboard was developed using the cleaned, business-ready dataset from the data warehouse. The dashboard is structured across two pages. 

Page 1: Shows gross sales, total profit, and profit margin (filterable by year), monthly profit trends, top-performing countries, and breakdowns by product categories.

Page 2: A product-level view showing each product’s total sales, profit, margin, and classification as high, moderate, or low-margin.


This design empowers business stakeholders to monitor performance, identify trends, and take action—all in real time.
