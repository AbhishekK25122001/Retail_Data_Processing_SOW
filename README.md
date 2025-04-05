# Retail_Data_Processing_SOW

Project Overview
This project implements an end-to-end data pipeline for retail data processing using Azure Databricks, MySQL, Power BI, and Azure Data Factory (ADF), structured according to the Medallion Architecture. The goal is to transform raw retail datasets into meaningful business insights through systematic ingestion, transformation, and reporting.

Architecture
- Bronze: Raw data ingestion from source (CSV) into ADLS
- Silver: Cleaned, validated, and transformed data using PySpark
- Gold: Aggregated business KPIs for reporting and analysis

Repository Structure
- data/: Sample raw retail CSV files
- notebooks/: PySpark notebooks for Bronze, Silver, and Gold layers
- sql/: SQL scripts for creating and populating Gold tables in MySQL
- powerbi/: Power BI dashboard (.pbix) showing KPIs and visualizations
- adf/: ADF pipeline templates in JSON format
- images/: Architecture diagrams and dashboard screenshots

Tools & Technologies
- Azure Databricks (for processing with PySpark)
- Azure Data Lake Storage Gen2 (for data storage)
- MySQL (for Gold Layer data warehousing)
- Azure Data Factory (for pipeline orchestration)
- Power BI (for visualization and dashboarding)

How to Run
Upload raw retail CSV files to the ADLS container (e.g., rawsource).

Run PySpark notebooks sequentially: Bronze → Silver → Gold.

Use the provided SQL scripts to create and load the retail_gold table in MySQL.

Connect Power BI to the retail_gold table and build the dashboard.

Use ADF to schedule and automate the pipeline end-to-end.
